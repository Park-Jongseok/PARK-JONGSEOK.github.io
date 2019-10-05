---
layout: post
title: "CSV 파일 형식"
subtitle: "Comma Separated Values에 대해 이해한다."
date: 2019-10-03 00:00:00 -0400
background: '/img/posts/What-is-CSV-1.png'
---

## 1. CSV(Comma Separated Values)

- [CSV(Comma Separated Values)](https://ko.wikipedia.org/wiki/CSV_(%ED%8C%8C%EC%9D%BC_%ED%98%95%EC%8B%9D))의 위키백과 내용입니다.

> CSV는 몇 가지 필드를 쉼표(,)로 구분한 텍스트 데이터 및 텍스트 파일입니다. 확장자는 `.csv`이며,  
> MIME 형식은 text/csv 입니다. comma-separated-variables 라고도 합니다.

- [MINE](https://developer.mozilla.org/ko/docs/Web/HTTP/Basics_of_HTTP/MIME_types) 형식이란, 클라이언트에서 전송하는 문서의 종류를 표시하는 기능입니다. `WEB`에서는 파일의 확장자는 의미를 갖지 않기 때문에, 서버는 MIME 타입을 이용하여 각각의 파일의 확장자를 확인할 수 있습니다.

## 2. CSV의 형식과 사용 방법

- 예를 들면, 아래와 같은 형식입니다.

 ![What-is-CSV-2](/img/posts/What-is-CSV-2.png)

- 위의 사진을 보면, 문자와 콤마로 구성되어 있으며, 글자 수가 많으면 매우 보기 어렵습니다.

- 이러한 `CSV Data`는 표로 나타낼 수 있습니다.

| 제품 코드 | 제품명 | 수량 | 단가 | 금액 |
| :-----: | :---: | :--: | :--: | :--: |
| 0001 | A | 1 | 1000 | 10000 |
| 0002 | B | 2 | 2000 | 20000 |
| 0003 | C | 3 | 3000 | 30000 |

- 따라서, `CSV` 파일은 사람이 읽기 어렵지만, Excel, Access 등을 이용할 때 파일 데이터로 사용할 수 있습니다.

- 이외에도 다양한 프로그램에서 `CSV` 파일 형식을 다루기 때문에, 데이터를 관리하기 위해서 `CSV` 파일 형식으로 저장하는 경우가 많습니다.

- 또한, 텍스트 파일이기 때문에, `파일 사이즈가 작아서` 전송할 때 부담을 덜어주는 장점이 있습니다.

- `CSV` 이외에도 `JSON`, `TSV`, `XML` 형식으로 파일을 전송할 수 있습니다

- 그럼 끝!
