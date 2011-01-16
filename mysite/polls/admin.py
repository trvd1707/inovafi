from polls.models import Poll,Choice
from django.contrib import admin

class ChoiceInline(admin.TabularInline):
    model = Choice
    extra = 3


class PollAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['question']}),
        ('Date information', {'fields': ['pub_date'], 'classes':['collapse']}),
    ] 
    inlines = [ChoiceInline]
    list_display = ('question', 'pub_date')
    list_filter = ['pub_date']
    searc_fields = ['question']
    date_hierarchy = 'pub_date'



admin.site.register(Poll, PollAdmin)

admin.site.register(Choice)

