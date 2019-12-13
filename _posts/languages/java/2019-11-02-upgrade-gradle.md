---
layout: post
title: "Gradle 버전 변경"
subtitle: "Gradle wrapper를 이용하여 Gradle 버전을 변경한다."
categories: [ languages, java ]
date: 2019-11-02 07:50:40 +0900
background: /img/posts/background/gradle.png
---

## 1. Gradle

- [이전 포스트](../../../2019/11/01/installing-gradle.html)에서 `Gradle`을 설치하였습니다.

- 하지만, 하나의 프로젝트에서 여러 명이 참여할 경우 `Gradle`의 버전이 달라 문제가 생길 수도 있습니다.

- 그렇기 때문에, `Gradle`에서 협업을 할 때, `Gradle Wrapper`를 이용해서 버전을 관리하도록 권장합니다.

## 2. Gradle Wrapper

- [Gradle Wrapper](https://docs.gradle.org/current/userguide/gradle_wrapper.html)의 설명입니다.

> Gradle 빌드를 실행하는데, 권장되는 방법은 `Gradle Wrapper`를 이용하는 것입니다. `Wrapper`는 `Wrapper`에 선언된 `Gradle`의 버전을 호출하여 필요한 경우 미리 다운로드하는 스크립트입니다.  
> 따라서, 개발자는 수동으로 설치를 하지 않고도 `Gradle 프로젝트`를 신속하게 시작하고 실행할 수 있습니다.

- `Wrapper` 파일을 생성하기 위해 아래의 커맨드를 입력합니다.

```console
$ gradle wrapper
```

- 프로젝트의 경로(`gradle/wrapper`)에 `gradle-wrapper.properties`라는 속성 파일이 생성됩니다.

```properties
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-5.4.1-bin.zip
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
```

- 생성된 `gradle-wrapper.properties`에 빌드를 실행하는데 사용된 `Gradle` 버전으로 생성되어 있습니다. 

  -  현재 `gradle-5.4.1`를 사용하고 있기 때문에, `distributionUrl`이 `5.4.1`로 생성되었습니다.

- 생성된 `Wrapper` 파일을 프로젝트에 반영한 후 다른 팀원들이 `Wrapper`를 사용하여 빌드한다면, `gradle 5.4.1`로 적용됩니다.

  - `gradlew build` 또는 `gradlew.bat build`로 `Wrapper`를 사용하여 빌드 할 수 있습니다.

## 3. Gradle Wrapper를 이용하여 버전 변경

- `Gradle Wrapper`의 옵션을 이용하여 버전을 변경할 수 있습니다.

![upgrade-gradle-1](/img/posts/languages/java/upgrade-gradle-1.png)

- 지금 이 프로젝트에서 사용되는 `Gradle`의 버전은 `5.4.1`입니다.

```console
$ gradlew wrapper --gradle-version 5.6.4
BUILD SUCCESSFUL in 2s
1 actionable task: 1 executed
```

- 위의 커맨드를 입력하여 `Gradle`의 버전을 5.4.1에서 5.6.4로 바꿀 수 있습니다.

```properties
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-5.6.4-bin.zip
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
```

- 생성된 `gradle-wrapper.properties`의 내용을 확인해보면, `distributionUrl`의 버전이 `5.6.4`로 변경된 것을 확인할 수 있습니다.

```console
$ gradlew.bat build
// 또는
$ gradlew build
```

- 바뀐 버전을 적용하기 위해 위의 커맨드를 입력합니다.

![upgrade-gradle-2](/img/posts/languages/java/upgrade-gradle-2.png)

- 기존의 버전의 `5.6.4`로 바뀌었음을 확인할 수 있습니다.

![upgrade-gradle-3](/img/posts/languages/java/upgrade-gradle-3.png)

- 위의 사진을 참고하시면 `gradle -v`와 `gradlew -v`의 `gradle`버전이 다른 것을 확인할 수 있습니다.

- 그럼 끝!

#### 참고

- [Gradle Wrapper](https://docs.gradle.org/current/userguide/gradle_wrapper.html)
