---
layout: post
title: "Tomcat 설치하기 (Windows)"
subtitle: "Windows에 Tomcat을 설치한다."
categories: [ languages, java ]
date: 2019-11-03 22:22:04 +0900
background: /img/posts/background/tomcat.png
---

## 1. Tomcat

- [Apache Tomcat 홈페이지](http://tomcat.apache.org/)의 설명입니다.

> `Apache Tomcat`은 Java Servlet, Java Server Page, Java WebSocket 기술로 구현된 오픈소스 프로젝트입니다.

- Java Web Application을 구동시키기 위해서, `WAS(Web Application Server)`가 필요합니다.

- 다양한 WAS 중 무료인! Tomcat을 사용하여 기동시켜보겠습니다.

## 2. Tomcat 설치

- [Apache Tomcat 홈페이지](https://tomcat.apache.org/)에서 다운로드 할 수 있습니다.

![installing-apache-tomcat-1](/img/posts/languages/java/installing-apache-tomcat-1.png)

- 화면 가운데의 `Download` 또는 좌측의 `Download`를 클릭하여 필요한 버전 선택합니다.

![installing-apache-tomcat-2](/img/posts/languages/java/installing-apache-tomcat-2.png)

- 사용하시는 운영체제에 맞게 다운로드 해주세요.

- `9.0.27` 버전의 `32-bit/64-bit Windows Service Installer (pgp, sha512)`를 다운로드 하겠습니다.

![installing-apache-tomcat-3](/img/posts/languages/java/installing-apache-tomcat-3.png)

- 안녕! `Tomcat`

![installing-apache-tomcat-4](/img/posts/languages/java/installing-apache-tomcat-4.png)

- 환경 설정 부분인데, 기본 설정으로 해도 되지만, 저는 `Example`을 볼 것 같아서 `Example`을 선택했습니다.

![installing-apache-tomcat-5](/img/posts/languages/java/installing-apache-tomcat-5.png)

- `Tomcat` 내부 환경 설정입니다. 

  - `Oracle`을 사용하신다면, `8080` 포트가 중복될 가능성이 있기 때문에, 다른 것으로 바꾸시는게 좋습니다.

  - `Tomcat Administrator Login`은 나중에 입력할 수 있으니 공백으로 하셔도 괜찮습니다.

![installing-apache-tomcat-6](/img/posts/languages/java/installing-apache-tomcat-6.png)

- `Tomcat`을 실행하기 위해서는 `JRE(Java Runtime Environment)`가 필요하기 때문에, `JRE`가 저장된 경로를 선택해줍니다.

  - [tomcat-9.0-doc-RUNNING](http://tomcat.apache.org/tomcat-9.0-doc/RUNNING.txt)를 참고해주세요

![installing-apache-tomcat-](/img/posts/languages/java/installing-apache-tomcat-7.png)

- 쭉쭉 진행하시다 보면, 설치가 완료됩니다. `Run Apache Tomcat`을 체크한 후 주소표시줄에 [localhost:8080](https://localhost:8080)(또는 지정한 포트 번호)를 입력하여 구동 여부를 확인합니다.

  - 만약 체크하시지 않았더라도, 설치 경로의 `Apache Software Foundation\Tomcat 9.0\bin\Tomcat9w.exe`를 실행시켜 접속하면 됩니다.

![installing-apache-tomcat-](/img/posts/languages/java/installing-apache-tomcat-8.png)

- 설치가 문제없이 되었다면 위와 같이 `Tomcat`을 만날 수 있습니다.

- 그럼 끝!

#### 참고

- [Apache Tomcat](http://tomcat.apache.org/)
