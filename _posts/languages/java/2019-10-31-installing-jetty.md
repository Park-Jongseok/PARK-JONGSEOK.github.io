---
layout: post
title: "Jetty 설치하기 (Windows)"
subtitle: "Windows에 Jetty를 설치한다."
categories: [ languages, java ]
date: 2019-10-31 22:57:56 +0900
background: /img/posts/background/jetty.png
---

## 1. Jetty

- [Jetty 홈페이지](https://www.eclipse.org/jetty/documentation/9.4.22.v20191022/introduction.html#what-is-jetty)의 설명입니다.

> `Jetty`는 주로 소프트웨어 프레임워크에서 기계와의 커뮤니케이션(ex. 클라우드)에 사용되며 Http 서버, HTTP 클라이언트 및 javax.servlet 컨테이너를 제공하는 이클립스 재단의 오픈소스 프로젝트입니다.

## 2. Jetty 다운로드

- [Jetty 홈페이지](https://www.eclipse.org/jetty/download.html)에서 다운로드 할 수 있습니다.

![installing-jetty-1](/img/posts/languages/java/installing-jetty-1.png)

- `Jetty`는 `zip 또는 gzip` 형식으로 사용할 수 있습니다. `zip`으로 이용하겠습니다.

- 다운로드 한, `jetty-distribution-version`를 사용하기 쉬운 위치로 이동시킵니다. `Jetty Docs`에서는 이 위치를 `$JETTY_HOME`이라고 합니다.

- `Jetty`를 이용하여 웹 애플리케이션을 운용할 때, 여러가지 방법이 있는데, `$JETTY_HOME`을 수정하여 사용하는 방법, `$JETTY_BASE`라는 `base`를 따로 만들어서 실행하는 방법, `Shell Script`를 이용해서 설정 후 사용하는 방법 등이 있습니다.

- 하지만, `Jetty Docs`에서는 `$JETTY_BASE`를 따로 만들어서 사용하기를 권장합니다.

  - 저는 `C 드라이브`에 옮겨 두었습니다. 그러니까, `$JETTY_HOME = C:\jetty-distribution-9.4.22.v20191022`가 되겠네요

![installing-jetty-2](/img/posts/languages/java/installing-jetty-2.png)

- `Jetty`는 `GUI`가 없으므로, 서버를 설정 및 실행은 명령프롬포트 같은 터미널을 이용해서 실행 할 수 있습니다.

```console
$ java -jar start.jar
```

- 터미널을 열어 `$JETTY_HOME`으로 이동 후 위의 커맨드를 입력합니다.

![installing-jetty-3](/img/posts/languages/java/installing-jetty-3.png)

- 크게 문제없이 실행 되었다면, [localhost:8080](https://localhost:8080)을 입력하여 확인해봅니다.

  - `Jetty`는 기본적으로 `8080`포트를 사용하고 있습니다. `jetty.xml`에서 변경할 수 있습니다.

![installing-jetty-4](/img/posts/languages/java/installing-jetty-4.png)

- `Jetty`에 배포된 웹 애플리케이션이 없기 때문에 `404 Not Found`가 표시됩니다.

- 서버를 중지하기 위해, 터미널에서 `Ctrl + c`를 입력합니다.

![installing-jetty-5](/img/posts/languages/java/installing-jetty-5.png)

- `Jetty`의 파일에는 `demo-base`라는 데모 기반 디렉토리가 있습니다. 

- `$JETTY_HOME`에서 아래의 명령어를 입력하여, `demo-base`로 이동한 후 서버를 기동시킵니다.

```console
$ cd demo-base
$ java -jar ../start.jar
```

![installing-jetty-6](/img/posts/languages/java/installing-jetty-6.png)

- `demo`를 이용하여 기동확인이 끝났습니다. 올바르게 설치되었습니다!

- 그럼 끝!

#### 참고

- [Jetty](https://www.eclipse.org/jetty/documentation/9.4.22.v20191022/index.html)
- [위키백과 - Jetty](https://ko.wikipedia.org/wiki/%EC%A0%9C%ED%8B%B0_(%EC%9B%B9_%EC%84%9C%EB%B2%84))
