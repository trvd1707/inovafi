from django.db import models


import datetime

# Create your models here.

class Student(models.Model):
    name = models.CharField(max_length=100)
    password = models.CharField(max_length=20)
    studentType = models.BooleanField()
    email = models.CharField(max_length=100)
    birth = models.DateField()
    gender = models.CharField(max_length=1)
    def __unicode__(self):
        return self.name

class Course(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=250)
    expiration = models.IntegerField()
    slidesPath = models.CharField(max_length=250)
    def __unicode__(self):
        return self.name

class Enrollment(models.Model):
    course = models.ForeignKey(Course)
    student = models.ForeignKey(Student)
    enrollDate = models.DateField()
    testDate = models.DateField()
    grade = models.IntegerField()
    def __unicode__(self):
    	 return (self.course, self.student)
    
class Question(models.Model):
    course = models.ForeignKey(Course)
    questionBody = models.CharField(max_length=150)
    def __unicode__(self):
        return self.questionBody

class Answer(models.Model):
	 question = models.ForeignKey(Question)
	 answerBody = models.CharField(max_length=150)
	 correctAnswer = models.BooleanField()
	 def __unicode__(self):
	 	return self.answerBody








