from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
# Create your views here.

def index(request):
    return HttpResponse('congratulations Mr. Kaburu code pipeline working fine')