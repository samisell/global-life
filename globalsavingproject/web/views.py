from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return render(request, 'index.html')

def form(request):
    return render(request, 'form.html')

def history(request):
    return render(request, 'about/history.html')