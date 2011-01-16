from inovafi.models import Course,Question,Answer
from django.contrib import admin

class QuestionInline(admin.TabularInline):
    model = Question
    extra = 3

class AnswerInline(admin.TabularInline):
    model = Answer
    extra = 3

class CourseAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['name']}),
        ('Descricao', {'fields': ['description'], 'classes':['collapse']}),
        ('Valido por:', {'fields': ['expiration'], 'classes':['collapse']}),
        ('Onde estao os slides:', {'fields': ['slidesPath'], 'classes':['collapse']}),
    ] 
    inlines = [QuestionInline]
    list_display = ('name','slidesPath')
    list_filter = ['name']
    search_fields = ['name']


class QuestionAdmin(admin.ModelAdmin):
	fieldsets = [ 
	    ('Pergunta', {'fields' : ['questionBody']}),
	    ('Curso', {'fields' : ['course']}),
	]
	inlines = [AnswerInline]



admin.site.register(Course, CourseAdmin)

admin.site.register(Question,QuestionAdmin)
admin.site.register(Answer)

