# Create your views here.
from django.template import Context, loader
from django.shortcuts import render_to_response,get_object_or_404

from django.http import Http404

from inovafi.models import Aluno,Curso,Matricula
from django.core.urlresolvers import reverse
from django.http import HttpResponseRedirect,HttpResponse
from django.template import RequestContext

from django.contrib.auth import authenticate

def index(request):
    if request.POST:
        username = request.POST['user']
        password = request.POST['senha']

        user = authenticate(username=username, password=password)

        if user is not None:
            if user.is_active:
                #message = "You provided a correct username and password!"
                p = get_object_or_404(Aluno, pk=2)
                c = Curso.objects.all()
                return render_to_response('inovafi/detail.html', {'aluno': p, 'listaCursos':c}, context_instance=RequestContext(request))
            else:
                message = "Your account has been disabled!"
        else:
            message = "Your username and password were incorrect."
    else:
        message = "Please enter your user name and password."

    return render_to_response('inovafi/index.html', {'message': message}, context_instance=RequestContext(request))

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

