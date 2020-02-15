---
layout: post
title: "api-ms-win-crt-runtime-l1-1-0.dll"
subtitle: "Windows 에러를 해결한다."
categories: [ unclassified ]
date: 2019-11-11 20:46:11 +0900
background: /img/posts/background/api-ms-win-crt-runtime-l1-1-0.dll.png
---

## 1. api-ms-win-crt-runtime-l1-1-0.dll 에러

- `Visual Studio Code`의 업데이트를 진행하는 도중, `에러`가 발생했습니다.

- 얼마 전 노트북을 포맷한 후, `Windows 업데이트`를 하지 않아서 오류가 발생한 것 같습니다.

## 2. Windows 업데이트

- [Microsoft의 홈페이지에서 패치를 다운로드](https://support.microsoft.com/ko-kr/help/2999226/update-for-universal-c-runtime-in-windows)할 수 있습니다.

![api-ms-win-crt-runtime-l1-1-0.dll-1](/img/posts/unclassified/api-ms-win-crt-runtime-l1-1-0.dll-2.png)

- `방법 2: Microsoft 다운로드 센터`에서, 각 버전에 맞는 업데이트를 찾을 수 있습니다.

- 저는 `Windows 8.1 64bit`를 사용하고 있기 때문에, 해당 버전을 다운로드했습니다.

![api-ms-win-crt-runtime-l1-1-0.dll-1](/img/posts/unclassified/api-ms-win-crt-runtime-l1-1-0.dll-3.png)

- 다운로드를 하신 후, 잠시 기다리시면, 아래와 같은 화면이 나오면서 업데이트가 적용됩니다.

![api-ms-win-crt-runtime-l1-1-0.dll-1](/img/posts/unclassified/api-ms-win-crt-runtime-l1-1-0.dll-4.png)

## 3. 다른 방법

- 위의 방식으로 안 될 경우 아래의 4가지 파일을 다운로드합니다.

  - [KB3173424](https://www.microsoft.com/ko-kr/download/details.aspx?id=53219)

  - [KB3172614](https://www.microsoft.com/ko-kr/download/details.aspx?id=53334)

  - [KB3065988](https://www.microsoft.com/ko-kr/download/details.aspx?id=47738)

  - [KB3138615](https://www.microsoft.com/en-us/download/details.aspx?id=51210)

- 파일을 다운로드 한 후 `KB3173424 → KB3172614 → KB3065988 → KB3138615` 순으로 설치합니다.

- 만약, `Windows 업데이트 독립 실행형 설치 관리자`를 실행하셨는데, 실행이 안될 경우 `인터넷을 차단(LAN, Wifi 해제)`하시고 실행하면 됩니다.

![api-ms-win-crt-runtime-l1-1-0.dll-1](/img/posts/unclassified/api-ms-win-crt-runtime-l1-1-0.dll-5.png)

- 업데이트를 완료하셨으면, 제어판(Windows 키 + X)를 입력하시고, `Windows 업데이트`를 클릭하여 업데이트를 확인하시면 됩니다.

- 200개 정도 업데이트할 목록이 나왔었는데, 출근한다고 사진을 못 찍었습니다 ㅠㅠ

- 그럼 끝!

#### 참고

- [Microsoft](https://www.microsoft.com/ko-kr)
