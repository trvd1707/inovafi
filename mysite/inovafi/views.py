# Create your views here.
from django.template import Context, loader
from django.shortcuts import render_to_response,get_object_or_404

from django.http import Http404

from inovafi.models import Aluno,Curso,Matricula
from django.core.urlresolvers import reverse
from django.http import HttpResponseRedirect,HttpResponse
from django.template import RequestContext

from django.contrib.auth import authenticate,login
from django.contrib.auth.decorators import login_required


def index(request):
    if request.POST:
        username = request.POST['user']
        password = request.POST['senha']

        user = authenticate(username=username, password=password)

        if user is not None:
            if user.is_active:
                #message = "You provided a correct username and password!"
                #p = get_object_or_404(Aluno, pk=user.id)
                login(request,user)
                return HttpResponseRedirect(reverse('inovafi.views.detail', args=(user.id,)))
            else:
                message = "Usuario desabilitado"
        else:
            message = "Usuario ou senha incorretos"
    else:
        message = "Por favor, entre usuario e senha."

    return render_to_response('inovafi/index.html', {'message': message}, context_instance=RequestContext(request))

@login_required
def detail(request, aluno_id,):
   p = get_object_or_404(Aluno, pk=aluno_id)
   u = request.user 
   c = Curso.objects.all()
   m = p.matricula_set.all()
   return render_to_response('inovafi/detail.html', {'aluno': p, 'listaCursos':c,'u':u, 'm':m}, context_instance=RequestContext(request))

@login_required
def results(request, aluno_id):
    p = get_object_or_404(Aluno, pk=aluno_id)
    return render_to_response('inovafi/results.html', {'aluno': p})

@login_required
def matricula(request, aluno_id):
   p = get_object_or_404(Aluno, pk=aluno_id)
   u = request.user
   return HttpResponse("Voce est&aacute; selecionando aluno: %s para marticular em ..." % u.first_name)


