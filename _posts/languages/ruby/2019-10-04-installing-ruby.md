---
layout: post
title: "Windows에 Ruby 설치"
subtitle: "Windows에 Ruby를 설치한다."
categories: [languages, ruby]
date: 2019-10-04 08:00:00 +0900
background: '/img/posts/background/ruby.png'
---
## 1. Ruby

- [Ruby](https://ko.wikipedia.org/wiki/%EB%A3%A8%EB%B9%84_(%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D_%EC%96%B8%EC%96%B4))의 위키백과 내용입니다.

> 루비는 마츠모토 유키히로가 개발한 `동적 객체 지향 스크립트 프로그래밍 언어`입니다.  
> 루비는 순수 객체 지향 언어이며, 정수나 문자열 등을 포함한 데이터 형식 등 `모든 것이 객체`가 됩니다.  
> 클래스의 정의, 가비지 컬렉션, 정규표현식 등의 기능을 지원합니다.

- 다양한 프로그래밍 언어 중, 입문자용으로 `Ruby`, `Python`, `JavaScript`를 추천합니다. 프로그래밍할 때, 문법상 간단하며 읽기 쉬운 장점이 있습니다.

- 그리고, 일본 사람이 개발했기 때문에, 일본에서 많이 사용하고 있으며, 웹 프로그래밍일 경우 `Ruby On Rails`라는 웹 프레임워크와 함께 사용됩니다.

## 2. Ruby 다운로드

- [루비 홈페이지](https://www.ruby-lang.org/ko/downloads/)에서 해당하는 `OS`에 맞게 다운로드합니다.

- 저는 `Windows`에 설치하기 위해서 서드파티 도구인 `RubyInstaller`를 사용하겠습니다.

 ![installing-ruby-1](/img/posts/languages/ruby/installing-ruby-1.png)

- [RubyInstaller 홈페이지](https://rubyinstaller.org/downloads/)에서 다운로드 할 수 있습니다.

- 어떤 버전을 받아야 할지 모르시겠다면, 오른쪽의 `Which version to download?`를 읽어봅시다.
  
  - `Ruby+Devkit 2.6.X (x64)`를 추천합니다.
  - `DevKit`은 `RubyGems`를 별도로 설치할 필요 없이 사용할 수 있도록 도와줍니다.
  - `Ruby`와 함께, C/C++ 확장 모듈이 있는 Gem을 즉시 컴파일 할 수 있습니다.

- `RubyGem`이란 루비 애플리케이션이나 라이브러리를 설치, 관리를 할 수 있도록 도와주는 것입니다.

- 따라서, 추천하는 `Ruby+Devkit 2.6.5-1 (x64)`를 설치하도록 하겠습니다.

- 32bit는 `x86`, 64bit는 `x64` 입니다!

- 설치가 완료되고, 실행시키면, `I accept the License`를 클릭한 후, 다음과 같은 화면이 나옵니다.

 ![installing-ruby-2](/img/posts/languages/ruby/installing-ruby-2.png)

- `Add Ruby executables to your PATH` : 환경 변수 `PATH`에 `Ruby` 디렉터리를 추가합니다.

- `Associate, rb and .rbw files with this Ruby installation` : .rb와 .rbw 파일을 CMD에서 실행시킬 수 있도록 합니다.

- `Use UTF-8 as default external encoding` : `UTF-8`으로 인코딩 설정을 합니다.

- 저는 3가지 모두 체크했습니다.

![installing-ruby-3](/img/posts/languages/ruby/installing-ruby-3.png)

- `MYS32 development toolchain`은 루비로 개발할 때 필요하기 때문에, 함께 설치하도록 합니다.

![installing-ruby-4](/img/posts/languages/ruby/installing-ruby-4.png)

- 설치가 완료되면 `Finish`를 클릭합니다.

![installing-ruby-5](/img/posts/languages/ruby/installing-ruby-5.png)

- 잠시 기다리시면, `MSY32`를 설치하는 화면이 나오는데, `1`을 입력하여 설치해줍니다.

- `MSY32` 설치가 끝난 후, 터미널을 실행 시켜 잘 설치되었는지 확인해봅니다.

```console
$ ruby -v
```

![installing-ruby-6](/img/posts/languages/ruby/installing-ruby-6.png)

- `2.6.5`가 설치되어 있음을 확인할 수 있습니다.

- 그럼 끝!
