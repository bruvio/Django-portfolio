from django.shortcuts import get_object_or_404, render

from .models import Blog


# Create your views here.
def all_blogs(request):
    blog_count = Blog.objects.count()
    all_blogs = Blog.objects.order_by("date")[:5]
    return render(
        request,
        "blog/all_blogs.html",
        {"all_blogs": all_blogs, "blog_count": blog_count},
    )


def detail(request, blog_id):
    blog = get_object_or_404(Blog, pk=blog_id)
    return render(request, "blog/detail.html", {"blog": blog})
