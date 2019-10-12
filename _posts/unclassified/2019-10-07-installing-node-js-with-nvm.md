---
layout: post
title: "Node.js 설치(Windows)"
subtitle: "Windows에 nvm-windows을 이용하여 node.js를 설치한다."
categories: [ unclassified ]
date: 2019-10-07 23:39:29 +0900
background: '/img/posts/background/nodejs.png'
---

## 1. nvm(node version manager)

> `nvm`은 `Node.js` 버전을 관리하기 위한 프로그램입니다. `nvm`을 사용하여, `Node.js`과 `npm`의 버전을 관리할 수 있으며, 프로젝트에 따라서 간단하게 버전을 변경할 수 있습니다. `Node.js`의 버전 업데이트도 간단하게 실행할 수 있습니다.

- `Node.js`를 단순히 사용하는 분이라면, [Node.js 홈페이지](https://nodejs.org/en/)에서 `Node.js`를 다운로드 받을 수 있습니다.

- `Node.js`의 버전과 패키지를 관리하고 싶으시다면, `nvm`을 이용하시면 됩니다. 하지만, [nvm](https://github.com/nvm-sh/nvm#important-notes)에서는 `Windows`를 지원하지 않는다고 합니다.

- 그러므로, `Windows`에서 `Node.js` 버전을 관리하기 위해서는 `nvm-windows` 또는 `nodist`를 사용하시면 됩니다.

- 저는 `nvm-windows`를 사용해보겠습니다.

## 2. nvm-windows

- [nvm-windows의 releases](https://github.com/coreybutler/nvm-windows/releases)에서 다운로드 할 수 있습니다.

![installing-node-js-with-nvm-1](/img/posts/unclassified/installing-node-js-with-nvm-1.png)

- 저는 `nvm-setup.zip`를 다운로드 받았습니다. 다운로드 후 압축해제하시고 설치하시면 별다른 어려움 없이 설치 할 수 있습니다.

{% highlight console linenos%}
    npm -v
{% endhighlight %}

- 위의 명령어를 입력하여, 잘 설치되었는지 확인해봅니다.

![installing-node-js-with-nvm-1](/img/posts/unclassified/installing-node-js-with-nvm-2.png)

- 안녕! nvm

## 3. nvm-windows 명령어

![installing-node-js-with-nvm-1](/img/posts/unclassified/installing-node-js-with-nvm-3.png)

- `nvm list available`을 입력하면, 사용할 수 있는 `Node.js`의 버전을 표시합니다.
  
  - `CURRENT` : 최신버전입니다.

  - `LTS` : 장기 지원 버전(Long Term Support)이므로, 일반적인 경우보다 장기간에 걸쳐 지원합니다.

![installing-node-js-with-nvm-1](/img/posts/unclassified/installing-node-js-with-nvm-4.png)

- `nvm install [버전]`을 입력하여, `Node.js`의 버전을 설치할 수 있습니다. 저는 LTS인 `10.16.3`을 설치했습니다.

![installing-node-js-with-nvm-1](/img/posts/unclassified/installing-node-js-with-nvm-5.png)

- `nvm list` : `nvm`에서 관리하고 있는 `Node.js`의 목록을 확인할 수 있습니다.

- `nvm use [버전]` : `Node.js`의 버전을 사용가능하도록 변경합니다.
  
  - 다시 `nvm list`를 입력하면, `Currently using 64-bit executable`이 표시되어 있습니다!

- 마지막으로 `node -v`, `npm -v`를 입력하여, `Node.js`와 `npm`의 버전을 확인할 수 있습니다.

- 그럼 끝!
