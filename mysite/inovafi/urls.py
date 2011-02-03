from django.conf.urls.defaults import *
#from django.views.generic import DetailView, ListView
from polls.models import Poll

urlpatterns = patterns('inovafi.views',
    (r'^$', 'index'),
    (r'^(?P<aluno_id>\d+)/$', 'detail'),
    (r'^(?P<aluno_id>\d+)/results/$', 'results'),
    (r'^(?P<aluno_id>\d+)/matricula/$', 'matricula'),
    (r'^login/', 'login'),


)

