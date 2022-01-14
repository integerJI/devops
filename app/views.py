from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'index.html')

def move(request):
    return render(request, 'move.html')
