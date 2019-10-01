---
layout: post
title: "Github, Pull request template"
subtitle: "Github의 Pull request template를 작성한다."
date: 2019-09-30 00:00:00 -0400
background: '/img/posts/background/github.png'
---

## 1. Github, Pull Request Template

- [Creating a pull request template for your repository](https://help.github.com/en/articles/creating-a-pull-request-template-for-your-repository)를 참고하여 작성하였습니다.

- `Pull request template`이란, `repository`에 `Pull request`를 작성할 경우 자동으로 본문에 템플릿의 내용을 표시하는 기능입니다.

- `repository`의 `default` 브랜치에 템플릿을 생성해야하고, 마크다운 형식의 `.md`파일, 텍스트 형식의 `.txt`와 같은 확장자로 만들 수 있습니다.

## 2. Template 만들기

![creating-pull-request-template-1](\img\posts\creating-pull-request-template-1.png)

- 템플릿을 만들고 싶은 `repository`에서 `Create new file`을 클릭합니다.

![creating-pull-request-template-2](\img\posts\creating-pull-request-template-2.png)

- 파일 이름에 예시와 같이 `pull_request_template.md`를 입력합니다. (다른 이름으로 저장해도 좋아요!)

- `Pull request`를 할 때마다, 맞춤법 검사를 체크하기 위해서 체크박스를 템플릿에 추가했습니다.

{% highlight markdown %}
-  [ ] 맞춤법 검사
{% endhighlight %}

- 작성 후 하단의 `Commit new file`을 클릭합니다.
