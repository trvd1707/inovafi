# Create your views here.
from django.template import Context, loader
from django.shortcuts import render_to_response,get_object_or_404

from django.http import Http404

from inovafi.models import Aluno,Curso,Matricula
from django.core.urlresolvers import reverse
from django.http import HttpResponseRedirect,HttpResponse
from django.template import RequestContext



def index(request):
    course_list = Curso.objects.all().order_by('-nome')[:5]
    return render_to_response('inovafi/index.html', {'course_list': course_list}, context_instance=RequestContext(request))

def detail(request, aluno_id):
   p = get_object_or_404(Aluno, pk=2)
   c = Curso.objects.all()
   return render_to_response('inovafi/detail.html', {'aluno': p, 'listaCursos':c}, context_instance=RequestContext(request))

def results(request, aluno_id):
    p = get_object_or_404(Aluno, pk=aluno_id)
    return render_to_response('inovafi/results.html', {'aluno': p})

def matricula(request, aluno_id):
   p = get_object_or_404(Aluno, pk=aluno_id)
   return HttpResponse("Voce esta selecionando aluno: %s." % p.nome)

def login(request):
    student_list = Aluno.objects.all().order_by('-nome')[:5]
    return render_to_response('inovafi/login.html', {'student_list': student_list})

