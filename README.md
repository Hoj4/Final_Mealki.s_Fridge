# Final Project - Mealki's Fridge
<img src="https://github.com/Hoj4/Final_Mealki.s_Fridge/assets/118800372/e860ad32-1d57-4782-9c19-f8966340ee7b" alt="그림01-removebg-preview" width="400" height="140">

## 🖥️ 프로젝트 소개
  MES와 ERP가 결합된 형태의 웹 서비스 밀키트 도매회사
<br>

## 🕰️ 개발 기간
* 23.03.08일 - 23.04.14일

## 🧑‍🤝‍🧑 맴버구성
 - 팀장  : 강민정 - 로그인, 재고확인, 발주, 홈화면
 - 부팀장 : 이승민 - 출고, 입고, 사원관리
 - 팀원 : 임호정 - 작업지시관리, 홈화면(차트)
 - 팀원 : 김동미 - 자재관리
 - 팀원 : 김리안 - 거래처관리, 공지사항
 - 팀원 : 김제형 - 출고관리, 수주관리
 - 팀원 : 강상현 - 생산관리

## ⚙️ 개발 환경
개발 도구 : <br>
 Eclipse / Mysql WorkBench / Github <br>
언어 : <br>
 Java / Javascript / JQuerry / Ajax / HTML5 / CSS3 <br>
서버 :  <br>
Apache Tomcat v9.0 / AWS EC2 <br>

## 📌 주요 기능
#### 작업지시관리 - <a href="https://github.com/Hoj4/Final_Mealki.s_Fridge/wiki/%EC%9E%91%EC%97%85%EC%A7%80%EC%8B%9C%EA%B4%80%EB%A6%AC" >상세보기 - WIKI 이동</a>
- 수주번호 검색기능
- 수주번호 클릭 시 작업지시서 생성
- 작업 현황에 따른 작업지시 현황 탭 구현
- 작업상태가 대기중일 시에만 작업지시서 수정, 삭제 가능하도록 구현
- 작업지시서 삭제시 DELETE가 아닌 UPDATE문을 사용하여 DB에 데이터가 남아있게끔 구현
#### 홈화면 (수주왕 차트) - <a href="https://github.com/Hoj4/Final_Mealki.s_Fridge/wiki/%EC%88%98%EC%A3%BC%EC%99%95%EC%B0%A8%ED%8A%B8" >상세보기 - WIKI 이동</a>
- 메인 화면에 수주왕 차트 구현 (매달 자동 업데이트)

## 📌 주요 기능 동작 영상


https://github.com/Hoj4/Final_Mealki.s_Fridge/assets/118800372/c7b8015d-a389-4170-aa1c-ab48515d33f0


## ERD
![image](https://github.com/Hoj4/Final_Mealki.s_Fridge/assets/118800372/fc54e9ef-0129-4fdf-be12-633cb9c255a2)
![image](https://github.com/Hoj4/Final_Mealki.s_Fridge/assets/118800372/fab94f14-45fe-43e3-ac2a-2bcbe24a8933)

## 회고
아쉬운 점<br>
 - 초반 테이블 설계가 개발을 하면서 많이 달라진 점<br>
    => 초반의 테이블 설계를 꼼꼼히 하는 것이 중요하다는 것을 깨달음 <br>
 - 프로그래밍 언어의 한계로 모달창의 구현이 제한된 점<br>
    => 프로젝트가 끝난 후 C언어 학습 예정<br>
<br>
잘한 점 <br>
 - 사용자 입장에서 생각하며 가능한 한 모든 에러의 경우의 수를 막으려 노력함 <br>
 - 사용자 입장에서 가장 간단하고 편안하게 기능을 사용할 수 있도록 함  <br>
 - 작업지시서 삭제 시에 DB에 데이터가 남아있게끔 구현한 점


