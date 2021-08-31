from django.shortcuts import render
from .models import Blog
# Create your views here.
def all_blogs(request):

    all_blogs = Blog.objects.all()
    return render(request,'blog/all_blogs.html',{'all_blogs':all_blogs})