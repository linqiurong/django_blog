from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

# 比如我信要查询所有文章，我们就要views.py文件头部把文章表从数据模型导入
from .models import Article, Category, Banner, Tag


# 右侧推荐
def getRightRecommendList():
    # 右侧推荐
    right_recommend_list = Article.objects.filter(tui__id=2)[:6]

    return right_recommend_list


    
def getTagList():
    # Tag
    tag_list = Tag.objects.all()

    return tag_list



def getCateDataList():
    # 导航所有分类
    category_list = Category.objects.all()

    return category_list





def index(request):
    '''
      首页
    '''
    # 通过Category表查出所有分类
    category_list = getCateDataList()
    # 查询所有幻灯图数据，并进行切片
    banner_list = Banner.objects.filter(is_active=True)[0:4]
    # 推荐列表
    recommend_list = Article.objects.filter(tui__id=1)[:3]  # 查询推荐位ID为1的文章

    # 对Article进行声明并实例化，然后生成对象allarticle
    article_list = Article.objects.all().order_by('-id')[0:10]
    # 热门文章
    hot_list = Article.objects.all().order_by('views')[:10]  # 通过浏览数进行排序
    #  右侧推荐
    right_recommend_list = getRightRecommendList()
    
    tag_list = getTagList()
    
    # 把查询到的对象，封装到上下文
    context = {
        'category_list': category_list,
        'banner_list': banner_list,
        'article_list': article_list,
        'recommend_list': recommend_list,
        'hot_list': hot_list,
        'right_recommend_list': right_recommend_list,
        'tag_list': tag_list
    }
    # 把上下文传递到模板里
    return render(request, 'myblog/index.html', context)


def list(request, lid):
    '''
      文章列表
    '''
    # 获取通过URL传进来的lid，然后筛选出对应文章
    article_list = Article.objects.filter(category_id=lid)
    # 获取当前文章的栏目名
    category_name = Category.objects.get(id=lid)
    # 右侧的热门推荐
    right_recommend_list = getRightRecommendList()
    
    # 右侧所有文章标签
    tag_list = getTagList()
    # locals()的作用是返回一个包含当前作用域里面的所有变量和它们的值的字典
    return render(request, 'myblog/list.html', locals())


def show(request, sid):
    # 查询指定ID的文章
    article = Article.objects.get(id=sid)
    # 导航上的分类
    category_list = getCateDataList()
    # 右侧所有标签
    tags = getTagList()
    # 右侧热门推荐
    right_recommend_list = getRightRecommendList()
    # 内容下面的您可能感兴趣的文章，随机推荐
    hot_list = Article.objects.all().order_by('?')[:10]
    # 前一篇
    previous_blog = Article.objects.filter(
        created_time__gt=article.created_time, category=article.category.id).first()
    # 后一篇
    netx_blog = Article.objects.filter(
        created_time__lt=article.created_time, category=article.category.id).last()
    # 查看次数加1
    article.views = article.views + 1
    article.save()

    # 右侧所有文章标签
    tag_list = getTagList()

    return render(request, 'myblog/show.html', locals())


def tag(request, tag):
    list = Article.objects.filter(tags__name=tag)  # 通过文章标签进行查询文章
    right_recommend_list = getRightRecommendList()
    category_list = getCateDataList()
    tname = Tag.objects.get(name=tag)  # 获取当前搜索的标签名
    page = request.GET.get('page')
    tags = Tag.objects.all()
    paginator = Paginator(list, 5)
    try:
        list = paginator.page(page)  # 获取当前页码的记录
    except PageNotAnInteger:
        list = paginator.page(1)  # 如果用户输入的页码不是整数时,显示第1页的内容
    except EmptyPage:
        # 如果用户输入的页数不在系统的页码列表中时,显示最后一页的内容
        list = paginator.page(paginator.num_pages)
    return render(request, 'myblog/tags.html', locals())
