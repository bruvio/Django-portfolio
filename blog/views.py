from django.shortcuts import render

from .models import Blog


# Create your views here.
def all_blogs(request):

    all_blogs = Blog.objects.order_by("date")[:5]
    return render(request, "blog/all_blogs.html", {"all_blogs": all_blogs})


def detail(request, blog_id):

    return render(request, "blog/detail.html", {"id": blog_id})
