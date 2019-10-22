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

> `Probot`은 `Node.js`로 `GitHub` 앱을 구축하기 위한 프레임워크입니다. `Webhooks`의 수신 및 각 이벤트 처리, Github의 API 실행 등 모든 번거로운 작업을 기능으로 만들 수 있습니다!

- `Probot`으로 만들어진 여러 가지 기능들이 `오픈소스`로 제공되고 있습니다.
  
  - [Delete merged branch](https://probot.github.io/apps/delete-merged-branch/) : `Branch`가 `Merge` 되면 자동으로 `Branch`를 삭제합니다.

  - [Work In Progress](https://probot.github.io/apps/wip/) : `Pull Request`의 제목에 `WIP` 또는 `wip`이 포함될 경우 `Merge`를 막습니다.

  - 더 많은 기능들은 [Probot - featured apps](https://probot.github.io/apps/)에서 확인할 수 있습니다.
  
## 2. Delete merged branch

 - 가장 많이 사용되는 [Delete merged branch](https://probot.github.io/apps/delete-merged-branch/)를 설치해보겠습니다.

![create-github-app-with-probot-1](/img/posts/git/create-github-app-with-probot-1.png)

- 화면 우측 상단의 `Add to GitHub`를 클릭합니다.

![create-github-app-with-probot-2](/img/posts/git/create-github-app-with-probot-2.png)

- `All repositories` 또는 `Only select repositories`를 선택하고, `install`을 클릭합니다.

![create-github-app-with-probot-3](/img/posts/git/create-github-app-with-probot-3.png)

- `Settings → Integrations & service`에서 설치된 `GitHub Apps`를 확인할 수 있습니다.

![create-github-app-with-probot-4](/img/posts/git/create-github-app-with-probot-4.png)

- 잘 작동하는지 확인하기 위해, 이전 포스트를 `Merge` 시켜보겠습니다.

![create-github-app-with-probot-5](/img/posts/git/create-github-app-with-probot-5.png)

- `Merge`후 `delete-merged-branch`가 `branch`를 삭제했습니다!

## 3. Probot 프로젝트 생성

- `Merge`전 `Check List`에 전부 체크가 되어 있지 않다면, `Merge`를 할 수 없도록 막는 `Probot`을 만들어 보겠습니다.

- 아래의 명령어를 입력하여, `Probot 프로젝트`를 생성합니다. 이름은 첵첵봇!

```console
//npm
$ npx create-probot-app [프로젝트명]

//yarn
$ yarn create probot-app [프로젝트명]
```

![create-github-app-with-probot-6](/img/posts/git/create-github-app-with-probot-6.png)

- 음.. 뭔가 에러가 발생했지만 괜찮습니다. 프로젝트 경로로 이동하여 `npm install`을 입력합니다.

- 프로젝트가 잘 생성되었는지, 확인하기 위해 아래의 명령어를 입력합니다.

- `TypeScript`를 선택하셨다면, `build`를 통해 `TypeScript`를 `JavaScript`로 변환해야 합니다.

```console
//npm
$ npm run-script build
$ npm start   

//yarn
$ yarn build
$ yarn dev
```

- 실행 후 [http://localhost:3000/probot](http://localhost:3000/probot)으로 접속할 수 있습니다.  

![create-github-app-with-probot-7](/img/posts/git/create-github-app-with-probot-7.png)

- 안녕! `check-check-bot`!

- 확인하셨다면, `Ctrl + c`를 입력하여 작업을 끝내고, `app.yml`의 파일에서 필요한 이벤트와 권한을 설정해줍니다.

- 저는, `Merge`를 막기 위해서 `statuses`의 권한도 추가했습니다. 자세한 이벤트와 권한에 대해서는 [WebHooks](https://developer.github.com/webhooks/), [Permissions](https://developer.github.com/v3/apps/permissions/)를 참고해주세요!

```yaml
default_events:
  - issues
  - pull_request
  - status

default_permissions:
  issues: write
  metadata: read
  pull_requests: write
  statuses: write
```

- 다음으로 `GitHub`에 애플리케이션을 등록하겠습니다. 다시 애플리케이션을 기동시킵니다.  

![create-github-app-with-probot-8](/img/posts/git/create-github-app-with-probot-8.png)

- `GitHub`에 애플리케이션을 등록하기 위해서, `Register GitHub App`을 클릭합니다. 

- 자동 또는 수동으로 등록하는 두 가지 방법이 있습니다. 물론 저는 자동으로!

  -  자세한 내용은 [Developing an app - Manually Configuring a GitHub App](https://probot.github.io/docs/development/#manually-configuring-a-github-app)을 참고해주세요!


![create-github-app-with-probot-9](/img/posts/git/create-github-app-with-probot-9.png)

- 적당한 이름을 입력하고, `Create GitHub App`을 클릭합니다.

![create-github-app-with-probot-10](/img/posts/git/create-github-app-with-probot-10.png)

- `All repositories`와 `Only select repositories` 중 적용할 곳을 선택합니다.

- 다음으로, `app.yml`에서 설정한 권한들을 확인 후 `install`을 클릭합니다.

- 다시 프로젝트로 돌아오면, `.env`라는 파일이 생성되어 있습니다!

```text
WEBHOOK_PROXY_URL = WEB HOOK을 수신할 수 있는 URL입니다.
APP_ID = 애플리케이션의 ID입니다.
PRIVATE_KEY = 애플리케이션의 비밀키입니다.
WEBHOOK_SECRET = WEB HOOK을 수신하기 위한 인증 토큰입니다.
```

- `WEBHOOK_PROXY_URL`에는 `smee.io/XXX`로 작성되어있습니다. 로컬에서 애플리케이션을 개발한 경우, `smee.io/XXX`로 `WEBHOOK`의 이벤트를 수신하여 개발한 부분을 테스트 할 수 있습니다.

- 다음으로, `index.js`를 수정합니다.

- 비슷한 기능을 수행하는 `GitHub App`을 찾아봤는데, 역시 [Task-list-zero-bot](https://github.com/clarkbw/task-list-zero-bot)이라는 것이 존재했습니다. 이름도 `check-check-bot`보다 좋네요!

- 아무튼, [Task-list-zero-bot](https://github.com/clarkbw/task-list-zero-bot)를 참고하여 `index.js`를 수정합니다.

```typescript
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
```

- 수정 후, `Check Check bot`을 기동시킵니다.

![create-github-app-with-probot-11](/img/posts/git/create-github-app-with-probot-11.png)

- 다음으로, 애플리케이션을 설치한 `Repository`에서 `Pull Request`를 작성해봅니다.

![create-github-app-with-probot-12](/img/posts/git/create-github-app-with-probot-12.png)

- `All checks have failed`라는 경고 문구가 작성되어 있습니다!

![create-github-app-with-probot-13](/img/posts/git/create-github-app-with-probot-13.png)

- `Check List`의 항목을 모두 체크하니 정상적으로 `Merge` 할 수 있습니다.

![create-github-app-with-probot-14](/img/posts/git/create-github-app-with-probot-14.png)

- `Check Check bot`의 프로젝트에서 문제없이 `Web Hook`을 수신했습니다. 혹시 잘 안되시면, 콘솔을 확인하여 오류를 해결해보아요!

## 4. Probot 프로젝트 Deploy

- 지금까지는, `로컬`에서 `Probot`을 기동시켜 적용시켰습니다. 하지만, 이 프로젝트를 기동시키지 않으면 `Probot`은 작동하지 않습니다.

- 따라서, 계속해서 `Probot`을 이용하기 위해서는 클라우드 프로바이더를 이용하여 배포를 해야 합니다.

- `Glitch`, `Heroku`, `Now`, `GitHub Actions` 등을 이용하여 무료로 배포 할 수 있습니다. 자세한 사항은 [Probot - Deployment](https://probot.github.io/docs/deployment/)를 참고해주세요

- 저는 `Glitch`를 이용하여 배포해보도록 하겠습니다.

- [Create a new app on Glitch](https://glitch.com/edit/#!/new-project)를 클릭하여, 새로운 `Glitch` 앱을 생성합니다.

![create-github-app-with-probot-15](/img/posts/git/create-github-app-with-probot-15.png)

- 좌측 상단의 `Sign in`을 클릭하여, 가입합니다. 저는 `Sign in With GitHub`를 이용했습니다.

![create-github-app-with-probot-16](/img/posts/git/create-github-app-with-probot-16.png)

- `GitHub Repository`로 부터 소스 코드를 `Import` 하겠습니다.

- 로그인 후, 하단의 `Tools` → `Git, Import, and Export` → `Connect GitHub` → `Import from GitHub`를 클릭하고, `GitHubUser/Repository` 형식으로 `Import` 할 수 있습니다.

![create-github-app-with-probot-17](/img/posts/git/create-github-app-with-probot-17.png)

- 잠시 기다리시면, 선택한 `Repository`가 `Import` 되어 표시됩니다.

![create-github-app-with-probot-18](/img/posts/git/create-github-app-with-probot-18.png)

- 화면 좌측 상단의 `Show → In a New Windows`를 클릭합니다.

- URL의 `/probot`을 제외한 부분을 복사합니다. 저는 `https://check-check-bot.glitch.me`가 되겠네요!

- `GitHub`의 `Settings → Developer settings → GitHub Apps`으로 이동하여, 작성한 `GitHub App`의 `Edit`을 클릭합니다.

![create-github-app-with-probot-19](/img/posts/git/create-github-app-with-probot-19.png)

- `Webhook URL`에 복사한 URL을 붙여넣습니다. `Webhook secret`은 로컬 프로젝트의 `.env`에서 확인할 수 있습니다.

![create-github-app-with-probot-20](/img/posts/git/create-github-app-with-probot-20.png)

- 다시 Glitch로 돌아와서 `.env` 파일을 수정합니다. 수정 내용은 [Glitch](https://probot.github.io/docs/deployment/#glitch)를 참고하면 다음과 같습니다.

```text
APP_ID=<your app id>
WEBHOOK_SECRET=<your app secret>
# PRIVATE_KEY_PATH=./.data/private-key.pem
# PRIVATE_KEY=<your app private key>
NODE_ENV=production
```

- 로컬 프로젝트의 `APP_ID`, `WEBHOOK_SECRET`을 복사하여 붙여넣습니다.

  - `PRIVATE_KEY_PATH`는 `Glitch Project`에서 `New File`을 클릭하여, `.data/private-key.pem`을 생성하여 `private-key.pem`에 로컬 프로젝트의 `PRIVATE_KEY`를 붙여넣어도 되고, `.env`에 `PRIVATE_KEY`항목을 작성하여 직접 붙여넣어도 됩니다.

  - [Glitch](https://probot.github.io/docs/deployment/#glitch)에서는 `.data/private-key.pem`을 사용하게 되어있습니다.

![create-github-app-with-probot-21](/img/posts/git/create-github-app-with-probot-21.png)

- 잘 작동하는지 확인하기 위해서, `Pull Request`를 확인합니다.

- 그럼 끝!

#### 참고

- [Probot]](https://probot.github.io/docs/)
- [GitHub Developer](https://developer.github.com/)
- [task-list-zero-bot](https://github.com/clarkbw/task-list-zero-bot)
- [Glitch](https://glitch.com/)
