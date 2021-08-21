---
layout: post
title: "IntelliJ에서 Android 항목이 없을 때"
subtitle: "새 프로젝트에 Android를 추가한다."
categories: unclassified
date: 2021-08-21 17:51:55 +0900
background: ./img/posts/background/when-there-are-no-android-content-in-intellij.png
---

## 1. IntelliJ에서 새 프로젝트 목록에 Android가 없을 때

- `Andorid` 애플리케이션을 개발하기 위해서 `IntelliJ`를 사용하려고 합니다. 하지만, 새 프로젝트 목록에 `Android` 항목이 존재하지 않아, 당황했습니다.

![when-there-are-no-android-content-in-intellij-1](/img/posts/unclassified/when-there-are-no-android-content-in-intellij-1.png)

- 원래라면 빨간 사각형 안에 있어야하는데... 아마도, 제가 `IntelliJ`를 설치할 때 `Android` 개발은 하지 않을거라고 생각하고 따로 설치하지 않았기 떄문일겁니다.

![when-there-are-no-android-content-in-intellij-2](/img/posts/unclassified/when-there-are-no-android-content-in-intellij-2.png)

- `Android` 항목을 추가하기 위해서, 새 프로젝트 생성의 취소를 클릭하시고, 플러그인 ⇨ 설치됨을 클릭하고 `android`를 검색합니다.

- 그러면 위의 사진과 같이 `Android` 플러그인과 `Smali Support`가 비활성화 되어 있고, 체크박스에 체크를 하여 활성화 시켜주면 됩니다.

![when-there-are-no-android-content-in-intellij-3](/img/posts/unclassified/when-there-are-no-android-content-in-intellij-3.png)

- 다음으로 `IntelliJ`를 다시시작 하고 다시 새 프로젝트를 클릭하면 아래와 같이 `Android` 항목을 확인할 수 있습니다.

![when-there-are-no-android-content-in-intellij-4](/img/posts/unclassified/when-there-are-no-android-content-in-intellij-4.png)

- 그럼 끝!
