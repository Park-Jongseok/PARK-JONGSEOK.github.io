---
layout: post
title: "Ruby On Rails 설치 (Windows)"
subtitle: "Windows에 Ruby on Rails를 설치한다."
categories: [ languages, ruby ]
date: 2019-10-08 23:44:07 +0900
background: /img/posts/background/rails.png
---

## 1. Ruby on rails

- [Ruby on Rails의 위키백과](https://ko.wikipedia.org/wiki/%EB%A3%A8%EB%B9%84_%EC%98%A8_%EB%A0%88%EC%9D%BC%EC%A6%88) 설명 입니다.

> `Ruby on Rails`는 루비로 작성된 `MVC 패턴`을 이용하는 오픈 소스 웹 프레임워크입니다.  
> 데이터베이스를 이용한 웹 애플리케이션을 개발할 때, 반복되는 코드를 대폭 줄여 개발 기간을 단축하는 특징이 있습니다. `Rails`가 기반을 두고 있는 `ActiveRecord`는 데이터베이스 작업을 추상화하여, CRUD 작업을 단순화 시킬 수 있습니다.

## 2. Ruby on rails 설치

- [이전 포스트](../../../2019/10/04/installing-ruby.html)에서 `Ruby`를 설치하였습니다. `Ruby`가 없으시다면, 참고해주세요.

- [RubyInstaller](http://railsinstaller.org/en)를 사용하여 설치하기도 했었지만, `Ruby Installer`는 `Ruby`와 `Rails`의 버전이 너무 낮아 다른 방법으로 해보겠습니다.

![installing-ruby-on-rails-1](/img/posts/languages/ruby/installing-ruby-on-rails-1.png)

```console
$ gem install rails
```

- 위의 명령어를 입력하여, `rails gem`을 설치합니다.

![installing-ruby-on-rails-2](/img/posts/languages/ruby/installing-ruby-on-rails-2.png)

```console
$ rails -v
```

- 위의 명령어를 입력하여, `rails`의 버전을 확인합니다. `rails`가 올바르게 설치되었습니다.

```console
$ rails new [프로젝트 이름]
```

- 위의 명령어를 입력하여, `rails` 프로젝트를 생성합니다.

![installing-ruby-on-rails-3](/img/posts/languages/ruby/installing-ruby-on-rails-3.png)

- 본인 방금 한 번에 설치되는 상상함ㅋㅋ 하지만 어림도없지!!

- 에러 내용을 살펴보니, `Gem`을 찾을수 없다고 합니다. 

- 세 가지 방법이 존재합니다. 

  ① 프로젝트의 `Gemfile`의 gem 'sqlite3', '~> 1.4'을 수정하여, 낮은 버전의 `sqlite3`을 이용하는 방법

  ② [Ruby Installer2](https://github.com/oneclick/rubyinstaller2#install-gems-with-c-extensions-and-additional-library-dependencies)를 참고하여, `MSY32`를 이용하여 `sqlite3`의 `Gem`을 직접 다운로드 하는 방법

  ③ 기존의 `sqlite3`이 있을경우 호환이 되지 않을 수도 있기 때문에, `mingw-w64-x86_64-dlfcn` 패키지를 설치하는 방법

- 저는 ③을 이용하여 다운로드 하겠습니다.

![installing-ruby-on-rails-4](/img/posts/languages/ruby/installing-ruby-on-rails-4.png)

```console
$ ridk exec pacman -S mingw-w64-x86_64-dlfcn
```

- 위의 명령어를 입력하여, `mingw-w64-x86_64-dlfcn` 패키지를 설치합니다.

![installing-ruby-on-rails-5](/img/posts/languages/ruby/installing-ruby-on-rails-5.png)

```console
$ ridk gem install sqlite3
```

- 위의 명령어를 입력하여, `sqlite3`의 `Gem`을 설치합니다.

- 다음으로, 프로젝트 경로에서 `bundle install`을 입력합니다. 정상적으로 될 경우 아래의 `Webpacker`의 내용은 무시하셔도 됩니다.

![installing-ruby-on-rails-6](/img/posts/languages/ruby/installing-ruby-on-rails-6.png)

- `rails`에서 `JavaScript`등 을 사용하기 위해서 `Webpacker`가 필요한데, 설정 파일이 없다고 혼냅니다.

```console
$ rails webpacker:install
```

- 위의 명령어를 입력하여, `Webpacker`를 설치해줍니다.

  - 참고로, `yarn`이 설치되어있지 않다면, 오류가 발생할 수도 있습니다.

![installing-ruby-on-rails-7](/img/posts/languages/ruby/installing-ruby-on-rails-7.png)

- 아래의 명령어를 입력하여, 설치 확인 및 `rails` 서버를 기동시켜봅니다.

```console
$ rails -v
Rails 6.0.0
$ rails s
```

![installing-ruby-on-rails-8](/img/posts/languages/ruby/installing-ruby-on-rails-8.png)

- `SIGUSR2, SIGUSR1, SIGHUP not implemented`라는 에러가 발생하는데, [StackOverflow](https://stackoverflow.com/questions/42808125/implications-of-sigusr2-not-implemented-signal-based-restart-unavailable)를 참고하면, `Windows`에서는 지원하지 않는 것이라고 합니다.

- 정상적으로 실행 되었다면, [localhost:3000](localhost:3000)를 입력하여 확인합니다.

![installing-ruby-on-rails-9](/img/posts/languages/ruby/installing-ruby-on-rails-9.png)

- 안녕! `Ruby on Rails`

- 그럼 끝!
