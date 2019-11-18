---
layout: post
title: "Gradle 설치하기 (Windows)"
subtitle: "Windows에 Gradle을 설치한다."
categories: [ languages, java ]
date: 2019-11-01 19:51:54 +0900
background: /img/posts/background/gradle.png
---

## 1. 빌드 자동화

- [빌드 자동화](https://ko.wikipedia.org/wiki/%EB%B9%8C%EB%93%9C_%EC%9E%90%EB%8F%99%ED%99%94)란, 소프트웨어를 개발하면서, 반복되는 작업들을 스크립트를 이용하여 자동으로 실행하는 것을 말합니다.

  - 빌드 자동화의 대표적인 툴은 `ANT, Maven, Gradle`등이 있으며, 자동화 툴을 사용하여 라이브러리 관리, 테스트 및 배포 자동화 등의 기능을 수행할 수 있습니다.

## 2. Gradle

- [Gradle 홈페이지](https://docs.gradle.org/current/userguide/what_is_gradle.html#what_is_gradle)의 설명입니다.

> `Gradle`은 다양한 소프트웨어를 제작할 수 있도록 설계된 오픈 소스 빌드 자동화 툴입니다. `Java`와 유사한 형식을 사용하는 `Groovy`를 도메인 언어로 사용하고 있으며, 현재 안드로이드 앱을 만드는데 필요한 `Android Studio`의 공식 빌드 툴이기도 합니다. `Java, C/C++, Python`등과 같은 여러가지 언어를 지원합니다.

## 3. Gradle 설치

- [Gradle 홈페이지](https://gradle.org/)에서 다운로드 할 수 있습니다.

![installing-gradle-1](/img/posts/languages/java/installing-gradle-1.png)

- `Install Gradle`을 클릭합니다.

![installing-gradle-2](/img/posts/languages/java/installing-gradle-2.png)

- `Gradle`을 사용하기 위해서는 `Java의 버전이 8이상`이어야 합니다.

```console
$ java -version
```

- `Java 버전`을 확인하기 위해 터미널에서 위의 명령어를 입력합니다.

![installing-gradle-3](/img/posts/languages/java/installing-gradle-3.png)

![installing-gradle-4](/img/posts/languages/java/installing-gradle-4.png)

- 다음의 `Installing manually`의 항목에서 `Binary-only` 또는 `Complete` 버전을 다운로드 합니다.

  - `Complete` 버전을 다운로드했습니다.

![installing-gradle-5](/img/posts/languages/java/installing-gradle-5.png)

- 위의 사진을 참고하면, 운영체제가 `Windows`인 경우에는 `C:\Gradle` 디렉터리를 추가하라고 합니다.

- 다운받은 파일을 `C:\gradle`에 압축해제합니다.

  - 그럼 경로가 `C:\Gradle\gradle-5.6.4`입니다. `Gradle`을 사용하기 위해서는 환경변수에 이 경로를 추가해야 하므로, 복사해둡니다.

## 3. Gradle 환경변수 설정

- 해당 경로에 위치하였으면, 환경 변수에 추가해야합니다.

![installing-gradle-6](/img/posts/languages/java/installing-gradle-6.png)

- `내컴퓨터 → 속성 → 고급 시스템 설정 → 환경변수`를 클릭합니다.

![installing-gradle-7](/img/posts/languages/java/installing-gradle-7.png)

- 하단의 `새로 만들기`를 클릭하고 각 변수의 이름과 값을 입력 후 확인을 클릭합니다.

  - 변수 이름 : `GRADLE_HOME`

  - 변수 값 : `C:\Gradle\gradle-5.6.4`

![installing-gradle-8](/img/posts/languages/java/installing-gradle-8.png)

- `시스템 변수`의 `Path`에서 `편집`을 클릭하여, 기존에 작성된 `Path` 변수 값 뒤에 `;%Gradle_HOME%\bin`을 입력 후 확인을 클릭합니다.

  - `;`에 유의해주세요!

```console
$ gradle -v
```

- 환경변수 설정 및 설치가 제대로 되었는지 확인하기 위해 위의 커맨드를 입력합니다.

![installing-gradle-9](/img/posts/languages/java/installing-gradle-9.png)

- 그럼 끝!

#### 참고

- [Gradle](https://gradle.org/)
- [위키백과 - 빌드자동화](https://ko.wikipedia.org/wiki/%EB%B9%8C%EB%93%9C_%EC%9E%90%EB%8F%99%ED%99%94)
