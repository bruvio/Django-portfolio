from django.shortcuts import render

# Create your views here.
def home(request):
    return render(request,'portfolio/home.html')

def about(request):
    theauthor = 'bruvio'
    return render(request,'portfolio/about.html',{'user':theauthor})
