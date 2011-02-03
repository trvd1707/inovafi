from inovafi.models import Curso,Pergunta,Resposta,Aluno,Matricula
from django.contrib import admin

class PerguntaInline(admin.TabularInline):
    model = Pergunta
    extra = 3

class RespostaInline(admin.TabularInline):
    model = Resposta
    extra = 3

class CursoAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['nome']}),
        ('Descricao', {'fields': ['descricao'], 'classes':['collapse']}),
        ('Valido por:', {'fields': ['validade'], 'classes':['collapse']}),
        ('Onde estao os slides:', {'fields': ['slidesPath'], 'classes':['collapse']}),
    ] 
    inlines = [PerguntaInline]
    list_display = ('nome','slidesPath')
    list_filter = ['nome']
    search_fields = ['nome']


class PerguntaAdmin(admin.ModelAdmin):
	fieldsets = [ 
	    ('Pergunta', {'fields' : ['corpoPergunta']}),
	    ('Curso', {'fields' : ['curso']}),
	]
	inlines = [RespostaInline]
	list_display = ('corpoPergunta',)
	list_filter = ['curso']

class RespostaAdmin(admin.ModelAdmin):
	fieldsets = [ 
	    ('Resposta', {'fields' : ['corpoResposta']}),
	    ('Pergunta', {'fields' : ['pergunta']}),
	    ('Correta',{'fields': ['correta']}),
	]
	list_display = ('corpoResposta','correta')
	list_filter = ['pergunta']


class AlunoAdmin(admin.ModelAdmin):
	fieldsets = [ 
	    ('Usuario',{'fields':['usrid']}),
	    ('Nascimento',{'fields': ['nascimento']}),
	    ('Sexo',{'fields': ['sexo']}),
	    ('Aluno de teste',{'fields': ['teste']}),
	]
	list_display = ('usrid','nascimento','sexo','teste')
	list_filter = ['nascimento']

class MatriculaAdmin(admin.ModelAdmin):
	fieldsets = [ 
	    ('Curso',{'fields':['curso']}),
	    ('Aluno',{'fields': ['aluno']}),
	    ('Data Matricula',{'fields': ['dataMatricula']}),
	    ('Data Prova',{'fields': ['dataProva']}),
	    ('Nota Prova',{'fields': ['nota']}),	]
	list_display = ('aluno','curso','dataMatricula','dataProva')
	list_filter = ['dataMatricula']

admin.site.register(Curso, CursoAdmin)

admin.site.register(Pergunta,PerguntaAdmin)
admin.site.register(Resposta,RespostaAdmin)
admin.site.register(Aluno,AlunoAdmin)
admin.site.register(Matricula,MatriculaAdmin)
