---
layout: post
title: "Postman"
subtitle: "Postman을 설치와 기본 기능을 사용해본다."
date: 2019-10-05 13:21:49 +0900
background: /img/posts/background/postman.png
---

## 1. Postman

- [Postman 홈페이지](https://www.getpostman.com/)의 내용입니다.
 
 > `Postman`은 API 개발을 위한 협업 플랫폼입니다. `Postman`의 기능은 API 구축의 각 단계를 단순화하고, 협업을 간소화시키고, 더 나은 API를 더 빨리 그리고 더 간단히 만들 수 있습니다.

- `API`를 작성하고, 잘 작동하는지 확인하기 위해서, 직접 프로그램을 실행 시켜 수동으로 테스트하는 방법도 있습니다. 하지만, 이러한 방법은 시간이 오래 걸립니다. (무엇보다 귀찮습니다!)

- `Postman`은 이러한 `Web API`를 테스트를 도와주는 애플리케이션입니다. 클라이언트 쪽의 동작을 확인할 수 있으며, 테스트할 때 여러 가지 변수를 저장하는 기능, API에 대한 정의를 공유할 수 있는 기능 등이 있습니다.

- 유료 버전도 있지만, 무료 버전만으로도 강력한 기능을 제공합니다!

## 2. Postman 설치

- [Postman 크롬 확장 프로그램](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop)을 이용하여 사용할 수 있으며, 직접 [Postman 홈페이지](https://www.getpostman.com/downloads/)에서 다운로드할 수 있습니다.

- 저는 홈페이지에서 직접 다운로드하겠습니다.

![what-is-postman-1](\img\posts\what-is-postman-1.png)

- 안녕! 포스트맨

![what-is-postman-2](\img\posts\what-is-postman-2.png)

- 간단하게 `Google` 아이디로 로그인합니다.

![what-is-postman-3](\img\posts\what-is-postman-3.png)

- 커스터마이징 하는 화면인데, 밝은 것이 더 좋으니까 `Light theme`와 `Single pane layout`을 선택했습니다.

![what-is-postman-4](\img\posts\what-is-postman-4.png)

- 혼자 사용하니까... `Skip for now`를 클릭합니다.

![what-is-postman-5](\img\posts\what-is-postman-5.png)

- 메인 화면입니다.  

## 3. Postman의 기능

#### 1) 기본적인 기능

![what-is-postman-6](\img\posts\what-is-postman-6.png)


- `HTTP 메서드` : 테스트하고 싶은 `HTTP 메서드`(GET, POST, DELETE, PATCH ...)를 선택할 수 있습니다.

- `URL` : 테스트하고 싶은 `API`의 `URL`을 작성합니다.

- `Send` : 작성한 `API`를 실행합니다.

- `Save` : 작성한 `API`를 저장합니다.

- `Params` : `URL` 파라미터를 `KEY - VALUE` 형태로 지정하면, `Query Parameter`에 자동으로 추가해줍니다.

#### 2) Authorization

![what-is-postman-7](\img\posts\what-is-postman-7.png)

- 다양한 인증방식을 선택할 수 있는데, 저는 가장 기본적인 `Basic Auth`방식을 선택했습니다. 

- 각 인증방식에 해당하는 항목들이 나타납니다.

#### 3) Headers

![what-is-postman-8](\img\posts\what-is-postman-8.png)

- `Request Header` 정보를 입력하는 곳입니다. 직접 커스터마이징한 헤더를 지정하거나, 정의된 헤더들을 사용할 수 있습니다.

![what-is-postman-9](\img\posts\what-is-postman-9.png)

- 또한, 헤더를 선택하였을 경우, 그에 해당하는 Value 값을 보여줘서 편리합니다!

- 그리고 화면 우측의 `Bulk Edit`을 이용하여, KEY와 VALUE 형태가 아닌 `TEXT` 형태로도 등록할 수 있습니다.

#### 4) Body

![what-is-postman-10](\img\posts\what-is-postman-10.png)

- `Body`를 사용하는 경우, 해당하는 타입을 설정할 수 있습니다.

- `x-www-form-urlencoded`를 선택할 경우, Header의 `Content-Type`에 `application/x-www-form-urlencoded`가 자동으로 설정됩니다.

- 물론, `raw`의 `Text, JavaScript, JSON, HTML, XML`일 경우에도 `Content-Type`에 자동으로 설정해줍니다.

- 각 `Body`의 타입에 맞게 유효성 검사도 해주니, 직접 테스트하는 경우보다, 실수를 줄일 수 있습니다.

#### 5) Environments

![what-is-postman-11](\img\posts\what-is-postman-11.png)

- 화면 우측의 `톱니바퀴`를 클릭 후, `Manage Environments`에서 환경 설정이 가능합니다.

- 예를 들어서, `test`라는 환경에서 `base`라는 변수에 `localhost:4000`이라는 값을 저장하고 `Add`를 클릭합니다.

![what-is-postman-12](\img\posts\what-is-postman-12.png)

- 입력한 변수들은 {% raw %}`{{변수명}}`{% endraw %} 으로 사용할 수 있습니다. URL에 {% raw %}`{{base}}`{% endraw %}를 입력하면, 위의 사진과 같이 `localhost:4000`이 입력되어 있음을 확인할 수 있습니다.

- `로컬 환경`과 `테스트 환경`을 저장해놓고, 목록만 바꾸면, 더 쉽고 정확하게 테스트 할 수 있습니다.

- 이번 포스트는 기본 기능을 다루기 위한 포스트이므로, 다른 다양한 기능들은 다른 포스트에 작성하겠습니다.

- 그럼 끝!

