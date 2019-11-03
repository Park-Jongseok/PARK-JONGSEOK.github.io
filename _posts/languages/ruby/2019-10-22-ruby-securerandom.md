---
layout: post
title: "Ruby 난수 생성하기"
subtitle: "SecureRandom을 이용하여 난수를 생성한다."
categories: [ languages, ruby ]
date: 2019-10-22 21:04:17 +0900
background: /img/posts/background/ruby.png
---

## 1. SecureRandom

- [Ruby 2.6.5 SecureRandom](https://ruby-doc.org/stdlib-2.6.5/libdoc/securerandom/rdoc/SecureRandom.html)을 참고하여 작성했습니다.

- 사실, Docs를 보면 다 적혀있는데, 자세한 옵션에 대해서 잘 몰라 정리해보려고 합니다.

## 2. SecureRandom 사용법

```ruby
require 'securerandom'
```

- `SecureRandom`을 사용하기 위해서, `Module 또는 Class`의 상단에 입력합니다.

- 기본적인 사용법은 아래와 같습니다.

```ruby
SecureRandom.XXX
SecureRandom.XXX(number)
```

- `UUID`를 제외한 다른 것들은 `number`를 이용하여, 해당 숫자만큼 난수를 생성할 수 있습니다.

### 1) hex(Hexadecimal)

- `hex`는 [16진법](https://ko.wikipedia.org/wiki/%EC%8B%AD%EC%9C%A1%EC%A7%84%EB%B2%95)을 의미합니다.

- 따라서, 생성되는 문자열은 `숫자(0~9)와 문자(a~f)`를 사용합니다.

```ruby
SecureRandom.hex #0913ed88ac8462d7adc7c46b293a4433
SecureRandom.hex(10) #b8e8005860118e3715be
```

### 2) base64

- `base64`는 [64진법](https://ko.wikipedia.org/wiki/%EB%B2%A0%EC%9D%B4%EC%8A%A464)을 의미합니다.

- 따라서, 생성되는 문자열은 `숫자(0~9)와 문자(a~z, A~Z)와 일부 기호(+, /, =)`를 사용합니다. 

```ruby
SecureRandom.base64 #9hlYMuDPuqPrpVuiHQwjoA==
SecureRandom.base64(10) #gWehRiCLKtFdHg==
```

### 3) random_bytes

- `random_bytes`는 [2진 문자열](https://www.ibm.com/support/knowledgecenter/SSEPGG_10.1.0/com.ibm.db2.luw.sql.ref.doc/doc/r0008472.html)을 의미합니다.

- 따라서, 생성되는 문자열은 `x00 ~ xff`를 사용합니다.

```ruby
SecureRandom.random_bytes #\xD27O\xA5v~\xBFuA\x02Oe/\xCE\x1F\xDB
SecureRandom.random_bytes(10) #\xE3\xF3BE\eL\xD1r\xD9\xC7
```

### 4) alphanumeric

- `alphanumeric`은 `영어와 숫자`를 사용하여 문자열을 생성합니다.

```ruby
SecureRandom.alphanumeric #OrS0kPq5CA2zPl4A
SecureRandom.alphanumeric(10) #eQd5Vk0VEo
```

### 5) uuid(Universally unique identifier)

- `uuid`를 사용하여 문자열을 생성합니다. 

  - [uuid](https://ko.wikipedia.org/wiki/범용_고유_식별자)는 총 `36개의 문자(8-4-4-4-12)`로 구성되기 때문에 숫자를 지정할 수 없습니다.

```ruby
SecureRandom.uuid #0ef3f739-56ab-4a81-8574-4f678c480b82
```

- 그럼 끝!

#### 참고

- [Ruby docs - SecureRandom](https://ruby-doc.org/stdlib-2.6.5/libdoc/securerandom/rdoc/SecureRandom.html)
- [2진 문자열](https://www.ibm.com/support/knowledgecenter/SSEPGG_10.1.0/com.ibm.db2.luw.sql.ref.doc/doc/r0008472.html)
- 위키백과
  - [16진법](https://ko.wikipedia.org/wiki/%EC%8B%AD%EC%9C%A1%EC%A7%84%EB%B2%95)
  - [64진법](https://ko.wikipedia.org/wiki/%EB%B2%A0%EC%9D%B4%EC%8A%A464)
  - [UUID](https://ko.wikipedia.org/wiki/범용_고유_식별자)
