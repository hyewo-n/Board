<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>회원가입 화면</title>
</head>
<body style="background-color: #f0e3e3">
<!-- header -->
  <div class="header2">
  	<div class="h_inner">
  	<nav class="nav2">
  	<br><br><br><br>
          <h1>I Love U</h1>
  </nav>
  </div>
  </div>
  
  <nav class="navbar navbar-default"> <!-- 네비게이션 -->
		<div class="navbar-header"> 	<!-- 네비게이션 상단 부분 -->
			<!-- 네비게이션 상단 박스 영역 -->
			
			<!-- 상단 바에 제목이 나타나고 클릭하면 main 페이지로 이동한다 -->
			<a class="navbar-brand" href="02_main.jsp">ILU</a>
		</div>
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="02_main.jsp">메인</a></li>
				<li><a href="02_main.jsp">게시판</a></li>
			</ul>
	
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역 -->	
					<ul class="dropdown-menu">
						<li><a href="01_login.jsp">로그인</a></li>
						<li><a href="01_join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
		
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역 -->	
					<ul class="dropdown-menu">
						<li><a href="01_logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
	
		</div>
	</nav>
	
  	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
  <!-- //header -->

  <div class="container">
  <div class="myinfo_wrap">
  <br><br><br><br><br>
   <!--   <form action="index.html" method="post" class="loginForm">  -->
    <form method="post" action="01_joinAction.jsp" class="loginForm">
      <h2>회 원 가 입</h2>
      <div class="idForm">
        <input type="text" class="id" name="userID" id="userID" placeholder="아이디 (ID) ">
      </div>
      <div class="passForm">
        <input type="password" class="pw" name="userPassword" id="userPW" placeholder="비밀번호 (Password)">
      </div>
      <div class="idForm">
        <input type="text" class="id" name="userName" id="userName" placeholder="이름 (Name) ">
      </div> 
      <div class="idForm">
        <input type="text" class="id" name="userEmail" id="userEmail" placeholder="이메일 (E-mail) ">
      </div>
      
  
      <button type="submit" class="btn04" onclick="button()">
            	회원가입 (JOIN)
      </button>
      
      
    </form>
    </div></div>
</body>
</html>