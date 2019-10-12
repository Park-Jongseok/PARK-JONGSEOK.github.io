---
layout: post
title: "Github, Pull request template"
subtitle: "Github의 Pull request template를 작성한다."
categories: [git]
date: 2019-10-01 00:00:00 +0900
background: '/img/posts/background/github.png'
---

## 0. Github, Pull Request Template

- `GitHub`로 블로그를 옮겼기 때문에, `Github`에서 사용할 수 있는 기능을 최대한 이용할 생각입니다!

- 반복되는 작업을 피하기 위한 첫 번째로, `Pull Request Template`를 작성해보겠습니다.

## 1. Pull Request Template

- [Creating a pull request template for your repository](https://help.github.com/en/articles/creating-a-pull-request-template-for-your-repository)를 참고하여 작성하였습니다.

- `Pull request template`이란, `repository`에 `Pull request`를 작성할 경우 자동으로 본문에 템플릿의 내용을 표시하는 기능입니다.

- `repository`의 `default` 브랜치에 템플릿을 생성해야 하며, 마크다운 형식의 `.md`파일, 텍스트 형식의 `.txt`와 같은 확장자로 만들 수 있습니다.

## 2. Template 만들기

![creating-pull-request-template-1](/img/posts/git/creating-pull-request-template-1.png)

- 템플릿을 만들고 싶은 `repository`에서 `Create new file`을 클릭합니다.

![creating-pull-request-template-2](/img/posts/git/creating-pull-request-template-2.png)

- 파일 이름에 예시와 같이 `pull_request_template.md`를 입력합니다.

- `Pull request`를 할 때마다, 맞춤법 검사를 체크하기 위해서 체크 박스를 템플릿에 추가했습니다.

{% highlight markdown linenos%}
    -  [ ] 맞춤법 검사
{% endhighlight %}

- 작성 후 하단의 `Commit new file`을 클릭합니다.

- 변경된 내용을 확인하기 위해서, `Pull requests`를 작성해보겠습니다.

![creating-pull-request-template-3](/img/posts/git/creating-pull-request-template-3.png)

- `Create pull request`를 클릭하시면, 아래의 사진과 같이 템플릿이 적용된것을 확인할 수 있습니다.

![creating-pull-request-template-4](/img/posts/git/creating-pull-request-template-4.png)

- 그럼 끝!
