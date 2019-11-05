---
layout: post
title: "Ruby OptionParser"
subtitle: "Ruby OptionParser를 이용하여 POST 생성기를 만든다."
categories: [ languages, ruby ]
date: 2019-10-28 13:02:33 +0900
background: /img/posts/background/ruby.png
---

## 1. Ruby OptionParser

- [Ruby OptionParser](https://ruby-doc.org/stdlib-2.6.5/libdoc/optparse/rdoc/OptionParser.html)를 참고하여 작성하였습니다. 

- `OptionParser`는 Command 옵션 분석을 위한 클래스입니다. 

- `OptionParser`를 사용하여, 옵션 요약을 출력할 수 있으며, 필수 및 선택요소를 지정할 수 있습니다.

## 2. Ruby OptionParser 사용법

```ruby
require 'optparse'
```

- 상단에 `require`를 입력하여 `OptionParser` 모듈을 호출합니다.

- `Ruby`에서 스크립트에 주어진 인수를 [ARGV](https://ruby-doc.com/core/ARGF.html#method-i-argv)라는 배열로 받을 수 있습니다.

```console
$ test.rb test
// ["test"]
```

- 먼저 예시의 소스 코드입니다.

```ruby
require 'optparse'

# Default values
options = {
  str: '',
  int: 0,
  boolean: false,
  enum: '',
  array: {}
}

OptionParser.new do |opts|
  opts.banner = 'Usage: test.rb [options]'

  opts.on_head('   Options                               Description')
  opts.on('-s', '--string str_value', 'String type  (Default : \'\')') { |v| options[:str] = v}
  opts.on('-i', '--i int_value', Integer, 'Integer type (Default : 0)'){ |v| options[:int] = v}
  opts.on('-b', '--[no-]boolean', 'Boolean type(Default : false)'){ |v| options[:boolean] = v}
  opts.on('-a', '--a array first, second', Array, 'Array type   (Default : {})') { |v| options[:array] = v}
  opts.on('-e', '--e enum', [:a, :b, :c], 'Enum values') { |v| options[:enum] = v}
end.parse!

p options
p ARGV
```

### 1) --help

- `-h` 또는 `--help`를 입력하면, 옵션에 대한 설명이 자동 생성되어 `console`에 나타납니다.

- `banner`를 설정하여 간단한 `banner`를 작성할 수 있습니다.

- `on_head`를 설정하여 간단한 설명을 추가할 수 있습니다.

```console
$ test --help
```

- 콘솔에 입력한 결과입니다.

```ruby
Usage: test.rb [options]
   Options                               Description
    -s, --string str_value              String type  (Default : '')
    -i, --i int_value                 Integer type (Default : 0)
    -b, --[no-]boolean               Boolean type(Default : false)
    -a, --a array first, second      Array type   (Default : {})
    -e, --e enum                     Enum values
```
### 2) 옵션 추가

- `on`을 사용하여 옵션을 추가할 수 있습니다.

#### ① 문자열

```ruby
  opts.on('-s', '--string str_value', 'String type  (Default : \'\')') { |v| options[:str] = v}
```
- 기본적으로 인수를 문자열로 받기 때문에, 위와 같이 작성하시면 됩니다.

- `str_value`는 옵션 뒤의 변수를 받기 위한 것이므로, 다른 이름을 사용하셔도 상관없습니다.

  - 변경하시면 `--help` 입력 후 출력형태가 변경됩니다.

#### ② 숫자

```ruby
  opts.on('-i', '--i int_value', Integer, 'Integer type (Default : 0)'){ |v| options[:int] = v}
```

- `Integer`를 입력하여, `Type`을 강제할 수 있습니다.

- `Date`, `DateTime`, `Time`, `URI` 등 다른 지원하는 타입들은 [Docs](https://ruby-doc.org/stdlib-2.6.5/libdoc/optparse/rdoc/OptionParser.html#class-OptionParser-label-Type+Coercion)를 참고해주세요

#### ③ Boolean

```ruby
  opts.on('-b', '--[no-]boolean', 'Boolean type(Default : false)'){ |v| options[:boolean] = v}
```

- 인수를 사용하지 않고 값만 필요한 경우에는 `boolean`을 이용할 수 있습니다.

- `default`값에 `false`를 지정해놓았지만, 옵션에 `-b`를 이용한다면 `true`로 표시됩니다.

- 옵션에 `--no-boolean`을 입력하시면, `false`로 표시됩니다.

#### ④ 배열

```ruby
  opts.on('-a', '--a array first, second', Array, 'Array type   (Default : {})') { |v| options[:array] = v}
```

- `Type`을 `Array`로 지정하면 `,(컴마)`를 이용하여 구분지을 수 있습니다.

```console
$ test -a bell,stone,blog # {:array=>["bell", "stone", "blog"]}
```

- 위와 같이 옵션에 `-a`를 입력하고 `test -a bell,stone,blog`를 입력하면 배열의 형태로 입력됩니다.

#### ⑤ Enum

```ruby
  opts.on('-e', '--e enum', [:first, :second, :third], 'Enum values') { |v| options[:enum] = v}
```

- `Enum`을 사용하여, 입력받는 인수를 제한할 수 있습니다.

- 지정되어있는 `first, second, third` 이외의 것을 입력하면, `InvalidArgument` 에러가 발생합니다.

#### 테스트 결과

```console
$ test -s optionparser -i 20191028 -b -a bellstone,blog -e first Hello OptionParser
```

- 잘 작동하는지 확인하기 위해 Console에 입력해봅니다.

```ruby
{:str=>"optionparser", :int=>20191028, :boolean=>true, :enum=>:first, :array=>["bellstone", "blog"]}
["Hello", "OptionParser"]
```

- 그럼 끝!

#### 참고

- [Ruby Docs](https://ruby-doc.org/stdlib-2.6.5/libdoc/optparse/rdoc/OptionParser.html)
