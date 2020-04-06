---
layout: post
title: "Python print 함수"
subtitle: "print 함수의 옵션"
categories: unclassified
date: 2020-04-06 20:28:00 +0900
background: /img/posts/background/python.png
---

## 1. print() 함수


- [파이썬 Docs](https://docs.python.org/ko/3.8/library/functions.html#print)를 참고하여 작성하였습니다.

- `print()` 함수는 문자열을 화면에 출력하는 함수입니다. `print()` 함수의 기본적인 형식은 아래와 같습니다.

```py
print(*objects, sep='', end='\n', file=sys.stdout, flush=False)
```

### 1. *objects

- `objects`는 콘솔에 출력할 내용입니다.

  - `*`는 인자를 여러개 넣어도 된다는 가변인수의 표현입니다.

```py
blog_name = 'BellStone'
language = 'Python'
print('블로그 이름 : {0}, 언어 : {1} '.format(blog_name, language))
print('블로그 이름 : %s, 언어 : %s' % (blog_name, language))
# 블로그 이름 : BellStone, 언어 : Python 
```

- 위와 같이 `.format()`을 사용하여, 해당하는 포멧으로 지정할 수 있으며, `%s`를 사용하여 문자열, `%d`를 사용하여 숫자를 출력할 수 있습니다.

### 2. sep

- `sep` 구분자 설정 옵션입니다. `default` 값은 `공백 1칸` 입니다.

```py
print('B', 'E', 'L', 'L', 'S', 'T', 'O', 'N', 'E')
# B E L L S T O N E

print('B', 'E', 'L', 'L', 'S', 'T', 'O', 'N', 'E', sep='-')
# B-E-L-L-S-T-O-N-E
```

### 3. end

- `end` 옵션은 마지막 글자입니다. `default` 값은 `\n`입니다.

  - 만약, 줄바꿈을 하고싶지 않다면, `end` 옵션에 `''` 옵션을 추가하면 됩니다.

```py
print('블로그 : ', end='')
print('BELLSTONE')
print('언어 : ', end='')
print('Python')
```

### 4. file

- `default` 값으로 표준 출력이 설정되어 있습니다. write(String) 메서드를 가지고 있는 오브젝트만 사용할 수 있습니다.

```py
blog_file = open('blog_name.txt', 'w')
print("Hello BellStone", file=blog_file)
blog_file.close
```

- 위의 예시 코드를 입력하면, 파이썬을 실행한 경로에 `blog_file`이 생성되며, 파일의 내용에는 `Hello BellStone`이 작성되어 있습니다.

### 5. flush

- 출력 버퍼링을 `true` 또는 `false`로 선택할 수 있습니다. `default` 옵션은 `false`입니다.

```py
import time
while True:
    print("Bell", end='')
    time.sleep(1)
    print("Stone", end='')
    time.sleep(1)
    print(" blog")
    time.sleep(1)

```

- 위의 코드는 버퍼에 저장된 문자열을 마지막 `print(" blog")`에서 한번에 출력하도록 설정되어 있습니다. 따라서 `BellStone blog`가 한 번에 출력됩니다.

```py
import time
while True:
    print("Bell", end='', flush='True')
    time.sleep(1)
    print("Stone", end='', flush='True')
    time.sleep(1)
    print(" blog", flush='True')
    time.sleep(1)
```

- 하지만, 위의 코드는 `flush='True'`로 설정되어 있기 때문에, 강제로 `flush`를 하기때문에, `Bell` / `Stone` / `blog`가 따로 출력되는것을 확인할 수 있습니다.


- 그럼 끝!

#### 참고

- [Python](https://docs.python.org/ko/3.8/library/functions.html#print)
