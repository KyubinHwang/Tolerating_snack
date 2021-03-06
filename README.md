# 군것질을 참아보자 🍫🍫🔥🔥

군것질을 얼마나 참았는지 확인해보고 동기부여를 받아보자!! 🔥🔥

### 💎 개요

- flutter을 이용한 개인 프로젝트를 해보고자 함!!
- 최근 react를 이용한 웹개발 공부를 하다보니 앱 개발도 해보고 싶어서 오랜만에 진행해봄!!
- 기획, UI, 개발 다 직접 해보기
- 단 기간에 집중해서 진행한 개발 내용!!

### 💎 기획 내용

- 군것질거리들을 참으려고 해도 동기부여가 잘 안되는 경우가 많음
- 이를 간단하게 참고자 하는 군것질, 군것질의 가격, 하루에 얼마나 먹는지를 작성하고 
- 이에 대해서 얼마나 참았는지 날짜 계산 및 4개의 목표 달성률을 확인, 또한 군것질을 참음으로써 얼마나 돈을 아꼈는지 확인할 수 있도록 함
- 또한 다시 군것질을 설정하고 싶다면 되돌아가는 버튼 또한 UI에 넣어주었다.

### 💎 사용 기술
- Flutter
     - intl 👉 https://pub.dev/packages/intl
     - percent_indicator 👉 https://pub.dev/packages/percent_indicator
     - cloud_firestore 👉 https://pub.dev/packages/cloud_firestore
- FireBase

### 💎 주요 기능

#### 👉 시작 화면

- 군것질 이름, 군것질 접하는 횟수, 군것질 가격 입력 TextInputForm (String 타입)
- 위 정보를 넘기는 버튼 (Navigation으로 이동 후 정보들 넘기기, 이를 firebase에 데이터 저장)

#### 👉 메인 화면

- 군것질 참은 일 수 계산 (받아왔던 datetime을 오늘의 날짜와 차이를 구하여 계산)
- 목표 일 달성률 계산 (달성률은 100%가 넘어가면 100%에 고정시키기, 아직 미 달성시 진행중이라는 문구 내용)
- 아낀 금액 계산 (date에 맞춰서 금액과 하루 군것질 횟수를 곱해줌으로써 계산)
- 리셋 버튼 (Navigation으로 시작 화면으로 이동)

### 💎 와이어 프레임

![참아보자-1](https://user-images.githubusercontent.com/70309113/164887252-861496ca-0754-40d7-a36d-2721d4c44f73.jpg)

### 💎 UI
<img width="325" alt="스크린샷 2022-04-24 오후 5 07 34" src="https://user-images.githubusercontent.com/70309113/164967021-dc0c6942-9d10-4b40-803d-9fad070659bb.png"> <img width="325" alt="스크린샷 2022-04-24 오후 5 07 44" src="https://user-images.githubusercontent.com/70309113/164967026-c3af8e51-d522-4141-afd6-4c6d633c8719.png"> <img width="325" alt="스크린샷 2022-04-24 오후 5 08 10" src="https://user-images.githubusercontent.com/70309113/164967029-860bdc08-1b5a-4c0d-ab11-13be5f0e4466.png">

<img width="325" alt="스크린샷 2022-04-24 오후 5 08 23" src="https://user-images.githubusercontent.com/70309113/164967036-756084e4-41af-49ca-be6d-c3cb277e7a5f.png"> <img width="325" alt="스크린샷 2022-04-24 오후 5 08 33" src="https://user-images.githubusercontent.com/70309113/164967040-152ce531-52db-4c2a-a5c2-e1580d1f2ef3.png">

### 💎 data

<img width="1137" alt="스크린샷 2022-04-26 오전 12 56 45" src="https://user-images.githubusercontent.com/70309113/165127205-2d936a9d-c01d-45d4-8b8f-ec5a22ae1529.png">

### 💎 느낀 점 및 정리하기

#### 👉 느낀 점
- 단기간에 바짝 집중해서 기획하고 마무리를 해보니 훨씬 부스트 효과가 났었음!!
- 기획부터 천천히 하고 오히려 간단한 아이디어를 실행시키는 일이 제작에 조금 더 수월할 수 있었다는 생각이 들었다.
- 또한 다양한 아이디어를 빨리 또 다시 flutter로 제작하고 싶다...
- 재밌는 아이디어가 생각나는대로 정리해서 실행시켜보도록 하자.

#### 👉 보완할 점
- 좀더 이쁜 UI 생각해보기!!!
- 배포까지 이루어질 수 있도록 추후에 developer 계정 가입할 수 있도록 하기!!
- 단순한 아이디어를 발전시킨 것이기 때문에 좀더 심화된 아이디어와 함께 좀더 다양한 페이지 만들어보기
- 애니메이션 효과를 줄 수 있는 방법이 없을지 고민하기
- appBar의 색상이 어색하여 수정필요!!
- 데이터를 저장해 둘 필요있음. 이때 firebase에 데이터 저장해서 만약 데이터가 저장되어 있다면 새로 데이터 설정할 필요없이 진행함!
