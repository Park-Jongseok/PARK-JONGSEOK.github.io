---
layout: post
title: "Oracle, 오라클 11g 설치"
subtitle: "Oracle 11g 버전을 설치한다."
categories: [database]
date: 2019-10-02 08:00:00 +0900
background: '/img/posts/background/oracle.png'
---

## 0. DB 순위

- [DB-engines.com](https://db-engines.com/en/ranking)에서 `DB 순위`를 확인할 수 있습니다. `2019년 10월 기준`으로는 아래와 같습니다.

 ![installing-oracle-11g-1](/img/posts/database/installing-oracle-11g-1.png)

- `Oracle > MySQL > SQL Server > PostgreSQL > MongoDB` 순서로, 사용해봤던 DB보다 모르는 DB가 더 많습니다...

- 그래도 아직 많이 사용되는 `Oracle`을 설치해보도록 하겠습니다. 

## 1. Oracle

- [오라클 데이터베이스의 위키백과](https://ko.wikipedia.org/wiki/%EC%98%A4%EB%9D%BC%ED%81%B4_%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4) 내용입니다.

> 오라클 데이터베이스는 미국 오라클사의 관계형 데이터베이스 관리 시스템의 이름입니다. 현재 Unix 환경에서 가장 널리 사용되는 RDBMS(Relational database management system)입니다.

- DBMS란, 데이터베이스를 관리하기 위해서 사용하는 도구이며, [관계형 데이터베이스](https://ko.wikipedia.org/wiki/%EA%B4%80%EA%B3%84%ED%98%95_%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4)는 각 데이터의 정보와 관계를 행과 열로 이루어진 테이블을 구성한 것입니다.

- `DB 순위`를 보면, 오라클은 가장 많이 사용하는 `관계형 데이터베이스 관리 시스템`입니다. Windows, Linux, MacOS 등 다양한 플랫폼을 지원하고 있으며, `대규모 시스템 구축`이 가능합니다.

- 하지만, 기능이 다양하지만, 시스템을 운용하거나 조작 방법이 어렵습니다.

- 대부분 기업에서 많이 사용하고 있으며, 개인 개발용으로는 `무료`입니다.

## 2. Oracle 11g 설치 방법

- [오라클 홈페이지](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html)에 접속합니다.

- 스크롤을 내려 하단의 `Oracle Database 11g Release 2`에서 OS에 맞게 `File 1`과 `File 2` 모두 다운로드합니다.

 ![installing-oracle-11g-2](/img/posts/database/installing-oracle-11g-2.png)

- 물론, 파일 다운로드 하시기 전에 `I accept the Oracle License Agreement` 선택하셔야 다운로드 가능합니다!

 ![installing-oracle-11g-4](/img/posts/database/installing-oracle-11g-4.png)

- 또한, 오라클을 다운로드하기 위해서는 `계정`도 필요하고요!

- 다운로드받은 각각의 파일들의 압축을 풀고 `win64_11gR2_database_2of2`의 `Components` 파일을 `win64_11gR2_database_2of1`의 `Components`로 복사합니다.

- 그러니까, 적은 쪽 파일을 많은 쪽에 복사하시면 됩니다.

 ![installing-oracle-11g-5](/img/posts/database/installing-oracle-11g-5.png)

- 복사 후 `setup` 파일을 실행시킵니다. (2010년 3월 12일... 오래도 됐네요)

 ![installing-oracle-11g-6](/img/posts/database/installing-oracle-11g-6.png)

- 안녕 오라클! 

![installing-oracle-11g-7](/img/posts/database/installing-oracle-11g-7.png)

- `환경이 최소 요구 사항을 충족하지 않습니다.`라는 경고창이 뜨는데, 최소 요구 사항이란 다음과 같습니다.  

  - tmp 공간 400MB 이상

  - Oracle 소프트웨어용 디스크 영역 1.5GB 이상
  
  - Database 용 디스크 영역 1GB 이상  

- 등 여러 가지 조건이 있는데, 그럼 어떡하나! `무시하고 예`를 클릭하시면 됩니다.

![installing-oracle-11g-8](/img/posts/database/installing-oracle-11g-8.png)

- 이메일 주소는 굳이 작성하지 않으셔도 됩니다.

![installing-oracle-11g-9](/img/posts/database/installing-oracle-11g-9.png)

- `개인용`으로 사용할 것이기 때문에, 입력하지 않겠습니다. `예` 클릭!

![installing-oracle-11g-10](/img/posts/database/installing-oracle-11g-10.png)

- 오라클을 설치하면서, 데이터베이스를 만드실 분은 `데이터베이스 생성 및 구성`을 선택해주세요.

- 소프트웨어만 설치하실 분들은 `데이터베이스 소프트웨어만 설치`를 선택하시면 됩니다.

![installing-oracle-11g-11](/img/posts/database/installing-oracle-11g-11.png)

- `환경 구축에 여러 가지 옵션`을 추가하는 경우는 `서버 클래스`를, 단순 `개발용`이라면 데스크톱 클래스를 선택하는 편이 좋습니다.

![installing-oracle-11g-12](/img/posts/database/installing-oracle-11g-12.png)

- `Oracle Base` : 설치하는 홈 디렉터리입니다.

- `문자 집합` : 문자 코드입니다.

  - 기본값으로 `KO16MSWIN949`로 되어 있는데, `한국어/영어`가 주로 사용되고,
  
  - `특수 기호` 또는 `다른 나라 언어`를 사용하실 경우는 유니코드(AL32 UTF8)를 사용하시면 됩니다.

- `관리자 암호 설정`은 Oracle의 유효성에 따라서, `영어 대문자 1개 이상, 숫자 1개 이상, 9자 이상`입니다.

- 적당한 비밀번호를 입력 후, 다음을 클릭합니다.

![installing-oracle-11g-13](/img/posts/database/installing-oracle-11g-13.png)

- 기본 설치에서 설정한 조건 등 여러 가지 조건에 대해 검사를 합니다. 잠깐 기다려요!

![installing-oracle-11g-14](/img/posts/database/installing-oracle-11g-14.png)

- 제품 설치까지 기다리시면 완료입니다.

- 마지막 사진을 찍지 않고, 급하게 눌러버려서 마지막 사진은 없습니다. ㅠㅠ

- 그럼 끝!

#### 참고

- [DB ENGINES](https://db-engines.com/en/ranking)
- 위키백과
  - [오라클 데이터베이스](https://ko.wikipedia.org/wiki/%EC%98%A4%EB%9D%BC%ED%81%B4_%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4)
  - [관계형 데이터베이스](https://ko.wikipedia.org/wiki/%EA%B4%80%EA%B3%84%ED%98%95_%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4)
- [Oracle](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html)
