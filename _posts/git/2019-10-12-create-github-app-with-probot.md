---
layout: post
title: "Probot"
subtitle: "Probot을 사용하여, GitApp에 적용한다."
categories: [ git ]
date: 2019-10-12 21:35:46 +0900
background: /img/posts/background/probot.png
---

## 1. Probot

- [Probot의 Introduction](https://probot.github.io/docs/)의 설명입니다.

> `Probot`은 `Node.js`로 `GitHub`앱을 구축하기 위한 프레임워크입니다. `Webhooks`의 수신 및 각 이벤트 처리, Github의 API실행 등 모든 번거로운 작업을 기능으로 만들 수 있습니다!

- `Probot`으로 만들어진 여러가지 기능들이 `오픈소스`로 제공되고 있습니다.
  
  - [Delete merged branch](https://probot.github.io/apps/delete-merged-branch/) : `Branch`가 `Merge`되면 자동으로 `Branch`를 삭제합니다.

  - [Work In Progress](https://probot.github.io/apps/wip/) : `Pull Request`의 제목에 `WIP` 또는 `wip`이 포함될경우 `Merge`를 막습니다.

  - 더 많은 기능들은 [Probot - featured apps](https://probot.github.io/apps/)에서 확인할 수 있습니다.
  
## 2. Delete merged branch

 - 가장 많이 사용되어지는 [Delete merged branch](https://probot.github.io/apps/delete-merged-branch/)를 설치해보겠습니다.

![create-github-app-with-probot-1](/img/posts/git/create-github-app-with-probot-1.png)

- 화면 우측 상단의 `Add to GitHub`를 클릭합니다.

![create-github-app-with-probot-2](/img/posts/git/create-github-app-with-probot-2.png)

- `All repositories`에 설정하는것도 가능하네요! 저는 blog repository 만 적용하기 위해서 `Only select repositories`를 선택했습니다.

- `Install`을 클릭합니다.

![create-github-app-with-probot-3](/img/posts/git/create-github-app-with-probot-3.png)

- `Settings`에서 설치된 `GitHub Apps`를 확인할 수 있습니다.

![create-github-app-with-probot-4](/img/posts/git/create-github-app-with-probot-4.png)

- 잘 작동하는지 확인하기 위해, 이전 포스트를 `Merge` 시켰습니다.

![create-github-app-with-probot-5](/img/posts/git/create-github-app-with-probot-5.png)

- `delete-merged-branch`가 `Branch`를 삭제시켰습니다!

## 3. Probot 프로젝트

- `Merge`전 `Check List`에 전부 체크가 되어 있지 않다면, `Merge`를 할 수 없도록 막는 `Probot`을 만들어 보겠습니다.

- 아래의 명령어를 입력하여, `Probot 프로젝트`를 생성합니다. 이름은 첵첵봇!

{% highlight markdown linenos%}
    //npm
    npx create-probot-app [프로젝트명]
    
    //yarn
    yarn create probot-app [프로젝트명]
{% endhighlight %}

![create-github-app-with-probot-6](/img/posts/git/create-github-app-with-probot-6.png)

- 음.. 뭔가 에러가 발생했지만 괜찮습니다. 프로젝트 경로로 이동하여 `npm install`을 입력합니다.

- 프로젝트가 잘 생성되었는지, 확인하기위해 아래의 명령어를 입력합니다.

- `TypeScript`를 선택하셨다면, `build`를 통해 `TypeScript`를 `JavaScript`로 변환해야합니다.

{% highlight markdown linenos%}
    //npm
    npm run-script build
    npm start   

    //yarn
    yarn build
    yarn dev
{% endhighlight %}

- 실행이 된다면, [http://localhost:3000/probot](http://localhost:3000/probot)으로 접속할 수 있습니다.  

![create-github-app-with-probot-7](/img/posts/git/create-github-app-with-probot-7.png)

- 안녕! `check-check-bot`!

- 확인하셨다면, `Ctrl + c`를 입력하여 작업을 끝내고, `app.yml`의 파일에서 필요한 이벤트와 권한을 설정해줍니다.

- 저는, `Merge`를 막기 위해서 `statuses`의 권한도 추가했습니다. 자세한 이벤트와 권한에 대해서는, [WebHooks](https://developer.github.com/webhooks/) , [Permissions](https://developer.github.com/v3/apps/permissions/)를 참고해주세요!

{% highlight yaml linenos%}
    default_events:
        - issues
        - pull_request
        - status

    default_permissions:
        issues: write
        metadata: read
        pull_requests: write
        statuses: write
{% endhighlight %}

- 다음으로 `GitHub`에 애플리케이션을 등록하겠습니다. 다시 애플리케이션을 기동시킵니다.  

![create-github-app-with-probot-8](/img/posts/git/create-github-app-with-probot-8.png)

- `GitHub`에 애플리케이션을 등록하기 위해서, `Register GitHub App`을 클릭합니다. 

- 자동 또는 수동으로 등록하는 두 가지 방법이 있습니다. 물론 저는 자동으로!

  -  자세한 내용은 [Developing an app - Manually Configuring a GitHub App](https://probot.github.io/docs/development/#manually-configuring-a-github-app)을 참고해주세요!


![create-github-app-with-probot-9](/img/posts/git/create-github-app-with-probot-9.png)

- 적당한 이름을 입력하고, `Create GitHub App`을 클릭합니다.

![create-github-app-with-probot-10](/img/posts/git/create-github-app-with-probot-10.png)

- `All repositories`와 `Only select repositories`중 적용할 곳을 선택합니다.

- 다음으로, `app.yml`에서 설정한 권한들을 확인 후 `install`을 클릭합니다.

- 다시 프로젝트로 돌아오면, `.env`라는 파일이 생성되어 있습니다!

{% highlight txt linenos%}
  WEBHOOK_PROXY_URL = WEB HOOK을 수신할 수 있는 URL입니다.
  APP_ID = 애플리케이션의 ID입니다.
  PRIVATE_KEY = 애플리케이션의 비밀키입니다.
  WEBHOOK_SECRET = WEB HOOK을 수신하기 위한 인증 토큰입니다.
{% endhighlight %}

- `WEBHOOK_PROXY_URL`에는 `smee.io/XXX`라고 적혀있습니다. 이것은 로컬에서 애플리케이션을 개발할 경우, `smee.io/XXX`로 `WEBHOOK`의 이벤트를 수신하고, 로컬에서 개발한 부분을 테스트 할 수 있습니다.

- 다음으로, `index.js`를 수정합니다.

- 비슷한 기능을 수행하는 `GitHub App`을 찾아봤는데! [Task-list-zero-bot](https://github.com/clarkbw/task-list-zero-bot)이라는 것이 존재했습니다. 이름도 `check-check-bot`보다 좋네요!

- 아무튼, [Task-list-zero-bot](https://github.com/clarkbw/task-list-zero-bot)를 참고하여 `index.js`를 수정합니다.

{% highlight typescript linenos%}
  import { Application } from 'probot' // eslint-disable-line no-unused-vars

  export = (app: Application) => {
    app.on([
      'pull_request.opened',
      'pull_request.edited',
      'pull_request.closed',
      'pull_request.reopened',
      'pull_request.synchronize'
    ], async (context) => {
      const title = context.payload.pull_request.title;
      const body = context.payload.pull_request.body;
      const isUnChecked = /-\s\[\s\]/g.test(body);
      const status = isUnChecked ? "failure" : "success";
      const param: any = {
        sha: context.payload.pull_request.head.sha,
        state: status,
        description: status ? "Please confirm Check List" : "OK!!",
        context: "Check Check Bot"
      };
      context.github.repos.createStatus(context.repo(param))
    })
  }
{% endhighlight %}

- 수정 후, `Check Check bot`을 기동시킵니다.
