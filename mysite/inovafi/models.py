from django.db import models


import datetime

# Create your models here.

class Aluno(models.Model):
    nome = models.CharField(max_length=100)
    senha = models.CharField(max_length=20)
    tipodealuno = models.BooleanField()
    email = models.CharField(max_length=100)
    nascimento = models.DateField()
    sexo = models.CharField(max_length=1)
    def __unicode__(self):
        return self.nome

class Curso(models.Model):
    nome = models.CharField(max_length=100)
    descricao = models.CharField(max_length=250)
    validade = models.IntegerField()
    slidesPath = models.CharField(max_length=250)
    def __unicode__(self):
        return self.nome

class Matricula(models.Model):
    curso = models.ForeignKey(Curso)
    aluno = models.ForeignKey(Aluno)
    dataMatricula = models.DateField()
    dataProva = models.DateField()
    nota = models.IntegerField()
    def __unicode__(self):
    	 return (self.course, self.student)
    
class Pergunta(models.Model):
    curso = models.ForeignKey(Curso)
    corpoPergunta = models.CharField(max_length=150)
    def __unicode__(self):
        return self.corpoPergunta

class Resposta(models.Model):
	 pergunta = models.ForeignKey(Pergunta)
	 corpoResposta = models.CharField(max_length=150)
	 correta = models.BooleanField()
	 def __unicode__(self):
	 	return self.corpoResposta

class Prova(models.Model):
   matricula = models.ForeignKey(Matricula)
   pergunta = models.ForeignKey(Pergunta)
   resposta = models.ForeignKey(Resposta)
   def __unicode__(self):
      return self.matricula

#end of file





