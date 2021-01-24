from django.db import models
from datetime import datetime

# Create your models here.
class Book(models.Model):
    book_title = models.CharField(max_length=100)
    book_author = models.CharField(max_length=100,null = True,blank=True)
    publication_date = models.DateField(null = True,blank=True)
    pages = models.IntegerField()

    def __str__(self):
        return self.book_title

class School(models.Model):
    school_name = models.CharField(max_length=100)
    school_email = models.EmailField(max_length=100)
    school_principal =models.CharField(max_length=100)
    school_number = models.CharField(max_length=12,blank=True)
    school_address =models.CharField(max_length=200)

    def __str__(self):
        return self.school_name

class Student(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100,blank=True)
    email = models.EmailField()
    gender= models.CharField(max_length=10,null = True,blank=True)
    school = models.ForeignKey(School,on_delete=models.CASCADE,null = True,blank=True)
    book =models.ForeignKey(Book, on_delete=models.CASCADE,null = True,blank=True)
    def __str__(self):
        return self.first_name +" "+ self.last_name

    def __str__(self):
        return self.first_name+" "+self.last_name

