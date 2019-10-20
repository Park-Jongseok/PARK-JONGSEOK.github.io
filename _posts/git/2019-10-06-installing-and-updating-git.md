---
layout: post
title: "Git, 설치 및 업데이트(Windows)"
subtitle: "Windows에서 Git을 설치 또는 업데이트 한다."
categories: [git]
date: 2019-10-06 20:38:23 +0900
background: /img/posts/background/git.png
---

## 1. Git

- [Git](https://ko.wikipedia.org/wiki/%EA%B9%83_(%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4))의 위키백과 내용입니다.

> `Git`은 컴퓨터 파일의 변경사항을 추적하여 여려명의 사용자 사이에서 작업을 효율적으로 처리하기 위한  `분산 버전 관리 시스템`입니다. 소프트웨어 개발에서 `소스 코드 관리`에서 주로 사용됩니다.

- `분산 버전 관리 시스템` 이란, 소프트웨어를 개발할 때 버그 수정 및 기능 추가 등 파일의 변경 사항을 기록하여, 여러 명의 개발자가 하나의 프로젝트에 동시에 협업 할 수 있도록 도와주는 시스템입니다.

- 이러한 시스템을 이용함으로써, 누가, 언제, 무엇을 했는지 이력을 확인할 수 있는 장점이 있습니다. 

- 대표적인 `버전 관리 시스템`으로는 `SVN`과 `GIT`이 있는데, 제가 사용하고 있는 `GIT`을 업데이트 해보겠습니다.

- 사실, 이번 포스트에서 `GIT`을 업데이트하지만, 설치랑 내용이 비슷하기 때문에 묶어서 작성하도록 하겠습니다.

## 2. GIT 설치 또는 업데이트

- `GIT`이 설치되어 있을지도 모르니까, 아래의 명령어를 입력하여 확인해봅니다.

```console
$ git --version
```

- 만약 설치되어 있지만, 버전이 오래되었다면, 아래의 명령어를 입력하여 `Git` 버전을 업데이트 해줍니다.  
  (2019년 10월 기준으로 `2.23.0`이 최신 버전입니다.)

```console
$ git update-git-for-windows
```

![installing-and-updating-git-1](/img/posts/git/installing-and-updating-git-1.png)

- 설치되어 있지 않다면, [Git 홈페이지](https://git-scm.com/)에서 해당하는 `OS`에 맞게 다운로드합니다.

- 다운로드 또는 업데이트가 완료된 후, 라이선스에 동의하시고, 파일 경로를 설정하시면 아래와 같은 화면이 나옵니다.

![installing-and-updating-git-2](/img/posts/git/installing-and-updating-git-2.png)

- [Git LFS(Large File Storage)](https://git-lfs.github.com/)는 대용량 파일의 버전을 관리하기 위해 사용됩니다. 오디오 샘플, 비디오, 고화질의 사진 등 `대용량 파일`을 다른 원격 저장소에 저장하여, 참조하는 형식으로 사용합니다. 언젠가 사용할지도 모르니, 저는 체크 하겠습니다.

- `Use a TrueType font in all console windows`에 체크할 경우, `한자, 한글, 일본어` 등의 문자는 깨지기 때문에, 체크하지 않는 편이 좋습니다.

- 그냥 기본 설정으로 해요!

![installing-and-updating-git-3](/img/posts/git/installing-and-updating-git-3.png)

- 저는 텍스트 에디터를 `Visual Studio Code`를 사용하기 때문에, `Use Visual Studio Code as Git's default editor`를 선택했습니다.

![installing-and-updating-git-4](/img/posts/git/installing-and-updating-git-4.png)

- 환경변수에 무엇을 추가 할 것인지, 선택하는 부분입니다.

  - `Use Git from Git Bash only` : `path`를 설정하지 않고, `Git` 명령어는 `Git bash`를 통해서만 사용할 수 있도록 설정합니다.

  - `Git from the command line and also from 3rd-party-software` : `path`에 `Git`을 추가함으로써, `PowerShell` 또는 `CMD`에서 이용할 수 있도록 설정해줍니다.

  - `Use Git and optional Unix tools from the Command Prompt` : `Git`뿐만 아니라, 다른 `Unix`에서 사용할 수 있는 명령어를 사용할 수 있도록 `path`에 추가합니다.

- 저는 기본 설정으로 했습니다.

![installing-and-updating-git-5](/img/posts/git/installing-and-updating-git-5.png)

- HTTPS를 사용하여, `Push, Pull` 할 경우, 내장된 증명서 라이브러리를 사용할 것인지, `Windows Secure Channel`의 라이브러리를 사용할 것인지 선택하는 것입니다.

- 기업 등 증명서가 있는 경우, `Use the native Windows Secure Channel library`를 선택하시면 되고, 아니면 그냥 `Use the OpenSSL library`를 선택합니다.

![installing-and-updating-git-6](/img/posts/git/installing-and-updating-git-6.png)

- `운영 체제`에 따라서, 개행(줄 바꿈)을 하는 문자가 다른데, `Windows`에서는 `CRLF`를 사용하고, 유닉스 계열에서는 `LF`를 사용합니다. 이러한 개행 구분을 위한 설정입니다. 개행에 대한 자세한 내용은 [새줄 문자](https://ko.wikipedia.org/wiki/%EC%83%88%EC%A4%84_%EB%AC%B8%EC%9E%90#ASCII)를 참고해주세요.
  
- `CRLF`란, 커서를 한 칸 아래로 이동시킨 후, 맨 왼쪽으로 이동시키는 것이고 `LF`는 커서를 한 칸 아래로 이동시키는 것입니다.

  - `Checkout Windows-style, commit Unix-style line endings` : 체크아웃 시에 개행 코드를 `LF`에서 `CRLF`로 변환하고, `Commit` 시에는 모두 `LF`로 변환합니다. (Windows에서 권장)

  - `Checkout as-is, commit Unix-style line endings` : `Commit` 시에 개행 코드를 `LF`로 변환합니다. (Unix에서 권장)

  - `Checkout as-is, commit as-is` : 아무 설정도 하지 않습니다.

- 사실, 이러한 개행 구분은 사용하시는 `IDE`에서 설정할 수 있기 때문에, 너무 고민 안 하셔도 됩니다.

![installing-and-updating-git-7](/img/posts/git/installing-and-updating-git-7.png)

- `Git`이 사용하는 `Console`을 `MinTTY`를 사용할지 `Windows`의 표준 `Console`을 사용할지 선택할 수 있습니다.

  - [MinTTY](https://en.wikipedia.org/wiki/Mintty)는 `Windows`에서 `Unix`와 유사한 환경인 `Cygwin`을 위한 오픈 소스 터미널 에뮬레이터 입니다. 그냥 터미널!

- `Default` 값이 `MinTTY`이지만, `Windows 10`에서 `Console`이 업데이트되고, 그게 마음에 드신다면 후자를 선택하시면 됩니다.

- 하지만, 일부 기능이 제한될 수 있다고 하니까... `MinTTY`를 선택했습니다.

![installing-and-updating-git-8](/img/posts/git/installing-and-updating-git-8.png)

- 추가 옵션을 선택하는 부분입니다.  

  - `Enable file system caching` : `git status`, `git log` 등 Git 명령어를 사용할 때, 반응속도를 개선하는 것입니다. 나중에 `git config --global core.fscache true` 명령어를 통해 `On/Off`로 따로 설정할 수 있습니다.

  - `Enable Git Credential Manager` : `GCM`에 대한 설정입니다. `GCM`을 설치할 경우, Visual Studio Code, IntelliJ, Github 등의 프로그램에서 `GIT`을 연동할 때, 2단계 인증을 하지 않고 사용할 수 있도록 도와주니 설치합니다.

  - `Enable symbolic links` : [Symbolic link](https://github.com/git-for-windows/git/wiki/Symbolic-Links)를 사용할 수 있습니다.

![installing-and-updating-git-9](/img/posts/git/installing-and-updating-git-9.png)

- [Offer a built-in version of git add -i and git add -p](https://github.com/git-for-windows/git/pull/2150)를 참고해주세요. 각 커맨드의 속도를 향상시키는것 같습니다.

- 설치가 끝났다면, `CMD` 또는 `Git bash`를 실행 시켜 버전을 확인해봅니다.

![installing-and-updating-git-10](/img/posts/git/installing-and-updating-git-10.png)

- 그럼 끝!
