## 게시판 만들기
#### JSP를 활용하여 DB가 포함된 게시판 기능을 구축한 웹사이트 제작

* 개발 환경
  - Eclipse Jee 2019-09
  - MySQL 8.0.25
  - Apache Tomcat 9.0   
  
* 결과 화면

 1. 회원가입 기능 구현
    * 회원 DB 테이블 생성
    ```sql
    create table USER(
                userID varchar(20),
                userPassword varchar(20),
                userName varchar(20),
                userEmail varchar(50),
                primary key(userID)
             );
    ```
    * 회원가입 화면   
    ![image](https://user-images.githubusercontent.com/95971431/176528438-69b50734-3413-4b5d-9126-a76109b4dee5.png)
    * DB에 입력된 회원정보 확인   
    ![image](https://user-images.githubusercontent.com/95971431/176529160-d3ecfc03-984c-41e3-8f8f-4f2bdbf2e570.png)
    
 2. 로그인 기능 구현   
 
    * 로그인 화면   
    ![image](https://user-images.githubusercontent.com/95971431/176524876-1d656f9c-7982-4850-9fe8-c677668e63e3.png)
    * 비밀번호 입력 오류 시   
    ![image](https://user-images.githubusercontent.com/95971431/176528948-b0e11bf7-6741-4247-8bf6-97ed1314ebd7.png)
    * 로그인 세션 확인   
    ![image](https://user-images.githubusercontent.com/95971431/176529512-d0e7da7d-8d9f-4908-8d28-acb680d038d1.png)
    
3. 게시판 글 작성 기능 구현
    * 게시판 DB 테이블 생성
    ```sql
    create table bbs(
		  bbsID int,
		  bbsTitle varchar(50),
		  userID varchar(20),
		  bbsDate datetime,
		  bbsContent varchar(2048),
		  bbsAvailable int,
		  primary key(bbsID)
	      );
    ```
    * 게시글 작성 화면   
    ![image](https://user-images.githubusercontent.com/95971431/176530402-2e3b3b46-aeb0-496c-9664-839fd67c5545.png)
    * DB에 입력된 게시판 내용 확인   
    ![image](https://user-images.githubusercontent.com/95971431/176531218-ddfc5208-e86e-4d95-9f01-1805b5853db5.png)
    
4. 게시판 목록 구현
    * 게시판 목록 화면   
    ![image](https://user-images.githubusercontent.com/95971431/176532786-3e55596a-c50b-468d-a28e-f33d2261ced6.png)
    
    * 게시글 보기 화면   
    ![image](https://user-images.githubusercontent.com/95971431/176532940-92a814af-8f32-4906-89e6-506a8c123bac.png)
    
5. 게시글 수정 및 삭제 기능 구현
    * 수정 및 삭제 버튼 생성   
    ![image](https://user-images.githubusercontent.com/95971431/176533319-f1a5c7ef-9c58-452d-87b4-2e11e247a7ae.png)
    
    * 작성 글 수정 및 확인   
    ![image](https://user-images.githubusercontent.com/95971431/176533498-5e1cbcab-8714-448c-a43e-d503f983b842.png)  ![image](https://user-images.githubusercontent.com/95971431/176533540-f8b5cd2a-d51f-4762-be80-9dc8bf653b3d.png)
    
    * 작성 글 삭제 및 확인   
    ![image](https://user-images.githubusercontent.com/95971431/176533778-441ca73e-88e3-4724-8b18-bc7a9f126feb.png)  ![image](https://user-images.githubusercontent.com/95971431/176533810-65698bd7-866a-448e-834c-c24bfb10b517.png)
    
