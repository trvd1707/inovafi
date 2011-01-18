from inovafi.models import Curso,Pergunta,Resposta
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



admin.site.register(Curso, CursoAdmin)

admin.site.register(Pergunta,PerguntaAdmin)
admin.site.register(Resposta)

