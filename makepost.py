import datetime
import argparse
import operator
from pytz import timezone

# Category
def make_path(category):

    post_path = './_posts/'
    file_path = '/img/posts/'
    background_path = '/img/posts/background/.png'
    languages = 'languages'
    

    if category =='java' or category =='ruby' :
        post_path = post_path + languages + '/' + category + '/'
        file_path = file_path + languages + '/' + category + '/'
        category = "[ " + languages + ', ' +category + ' ]'
    else:
        post_path = post_path + category + '/'
        file_path = file_path + category + '/'

    path_list = {'post_path' : post_path, 'file_path' : file_path, 'background_path' : background_path, 'category' : category}

    return path_list

def make_post(path_list, title):
    time = datetime.datetime.now(timezone('Asia/Seoul'))
    current_time = time.strftime('%Y-%m-%d')
    post_time = time.strftime('%Y-%m-%d %X %z')

    try:
        post = open(path_list.get('post_path') + current_time + '-' +title + '.md', 'w', encoding='UTF-8')
        post.write('---\n')
        post.write('layout: post''\n')
        post.write('title: ""''\n')
        post.write('subtitle: ""''\n')
        post.write('categories: ' + path_list.get('category') + '\n')
        post.write('date: ' + post_time + '\n')
        post.write('background: ' + path_list.get('background_path') + '\n')
        post.write('---\n\n')
        post.write('## 1. \n\n')
        post.write('![' + title + '-1](' + path_list.get('file_path') + title + '-1.png)\n\n')
        post.write('#### 참고\n\n')
        post.write('- []()\n')
        print("포스트가 생성되었습니다.")
    except Exception as e:
        print(e)
    finally:
        post.close

# Parser
parser = argparse.ArgumentParser(description='The Post Maker')
parser.add_argument('category', nargs='?', default='unclassified',  type=str, help='database, git, java, ruby, tools')
parser.add_argument('title', type=str, help='Post title')


args = parser.parse_args()
category = args.category
title = args.title

path_list = make_path(category)
make_post(path_list, title)
