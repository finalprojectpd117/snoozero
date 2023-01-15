# snoozero
## 📋설명
이 프로젝트는 AI 운전자 모션인식 어플리케이션 프로젝트입니다.
&nbsp;

## 💡목표
* 운전자 안면 모니터링 기능으로 이상행동을 감지합니다.
* 졸음운전 및 주시태만 사고를 예방할 수 있는 영상을 제공하여 사고율을 감소시킵니다.


## 🛠️Tech Stack
### Front End
<img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white"/></a> <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/></a> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white"/> <br> 

### Back End
<img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=MySQL&logoColor=white"/> <img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=flat&logo=Spring Boot&logoColor=white"/> <img src="https://img.shields.io/badge/Django-092E20?style=flat&logo=Django&logoColor=white"/></a>

### ML/DL
<img src="https://img.shields.io/badge/Python-3776AB?style=flat&logo=Python&logoColor=white"/></a> <img src="https://img.shields.io/badge/OpenCV-5C3EE8?style=flat&logo=OpenCV&logoColor=white"/></a>

### AI Data
🧠[AI HUB](https://aihub.or.kr/aihubdata/data/view.do?currMenu=115&topMenu=100&dataSetSn=173)
&nbsp;

## 📚Tables
### insurance 테이블
```mysql
CREATE TABLE insurance;(
ins_id VARCHAR(40) primary key,  
);

insert into insurance values ('a');
insert into insurance values ('b');
insert into insurance values ('c');
insert into insurance values ('d');
```

### user 테이블
```mysql
CREATE TABLE user(
custom_num int UNSIGNED AUTO_INCREMENT, 
ins_id VARCHAR(40),
passwd VARCHAR(40),
primary key(custom_num),
foreign key(ins_id) references insurance(ins_id) 
);

ALTER TABLE user AUTO_INCREMENT = 1;
```
&nbsp;

## 📦Project Diagram
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212555064-ae91c4ed-7419-49c5-a06d-abf9a9f98fb2.png"></p>
&nbsp;

## 💻주요 기능
### 로그인 및 로그아웃
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556464-fd03f26c-92b5-4095-b12b-9cad19e8de63.png"></p>

### 메인 페이지
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556603-2835610e-52b5-45ec-a58e-0059f87705e7.png"></p>

### 운전자 상태 분석 페이지
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556629-833ad9f7-b916-4657-9e00-f3bd5805fd18.png"></p>
&nbsp;

## 🔍프로그램이 감지할 수 있는 4가지 상태
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212555737-c02efd74-89b9-4227-bf6c-d174090c2f28.png"></p>

### 하품
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556073-37f741ea-dd85-46da-80c0-20f75e85953a.png"></p>

### 주시태만
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556156-7a9a20fd-62b6-43c2-8b73-0781a915cbce.png"></p>

### 졸음1
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556181-3d29aaa2-8dd4-4e25-8f6f-5a1f89c42c0a.png"></p>

### 졸음2
<p align="center"><img width="700" alt="20220722_122612527" src="https://user-images.githubusercontent.com/105186724/212556277-116935bd-49d7-44e7-ba86-4ea966a2d93c.png"></p>
&nbsp;

## 📌상태 이상 알림 단계
1. 운전자 얼굴 분석 시작
2. 얼굴 인식 후 랜드마크 감지를 기반으로 운전자 상태 구별
3. 특정 상태의 반복 횟수가 누적될 경우 경고 알림
&nbsp;

## 📊Test Result
- 478개의 랜드마크 좌표의 x, y값을 사용하여 Face Detection 성공
- 초당 18 ~ 20 프레임
&nbsp;

## 📢Issue
### ⭕️ MediaPipe 얼굴 랜드마크 감지

### ⭕️ 사용자 촬영 각도에 따른 랜드마크 감지 문제

### ❌ 데이터 셋 학습 실패
&nbsp;

## 👨‍👩‍👦‍👦Team
#### 👩‍💻 김승현
#### 👩‍💻 표정환
