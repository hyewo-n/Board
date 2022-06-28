<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">

<link rel="stylesheet" href="css/bootstrap.css">

<title>메인 화면</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;}
</style>
</head>

<body>
  <!-- header -->
  <div class="header2">
  	<div class="h_inner">
  	<nav class="nav2">
  	<br><br><br><br>
          사이트 이름 작성
  </nav>
  </div>
  </div>

  <!-- //header -->
  
  <hr>
 
   <%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		int pageNumber = 1; //기본은 1 페이지를 할당
		// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
		// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	
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
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				// 로그인 하지 않았을 때 보여지는 화면
				if(userID == null){
			%>
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
			<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
				}else{
			%>
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
			<%
				}
			%>
		</div>
	</nav>
	
  	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
    <!-- 본문 시작 -->
  <div class="container">
  <div class="myinfo_wrap">
       
    <h4>글 목 록</h4>
    
    <table class = "table_list">
      <tbody>
        <tr>
          <th style= "text-align: center;">번&nbsp&nbsp&nbsp&nbsp 호</th>
          
          <th style= "text-align: center;">제&nbsp&nbsp&nbsp&nbsp 목</th>
          
          <th style= "text-align: center;">작&nbsp&nbsp&nbsp&nbsp 성 &nbsp&nbsp&nbsp&nbsp자</th>
          
          <th style= "text-align: center;">작&nbsp&nbsp&nbsp&nbsp 성 &nbsp&nbsp&nbsp&nbsp일</th>
          
         </tr>
         
         <%
		BbsDAO bbsDAO = new BbsDAO(); // 인스턴스 생성
		ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
		for(int i = 0; i < list.size(); i++){
	  %>
         <tr>
          
          <td><%= list.get(i).getBbsID() %></td>
          
          <td><a href="04_view.jsp?bbsID=<%= list.get(i).getBbsID() %>">
					<%= list.get(i).getBbsTitle() %></a></td>
          
          <td><%= list.get(i).getUserID() %></td>
          
          <td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + ":"
							+ list.get(i).getBbsDate().substring(14, 16)  %></td>
							
		  <td><a class="btn btn-primary pull-right">삭제</a></td>
         </tr>  
         <%
						}
					%>             
      </tbody>
    </table>
    
    <!-- 페이징 처리 영역 -->
			<%
				if(pageNumber != 1){
			%>
				<a href="02_main.jsp?pageNumber=<%=pageNumber - 1 %>"
					class="btn btn-success btn-arraw-left">이전</a>
			<%
				}if(bbsDAO.nextPage(pageNumber + 1)){
			%>
				<a href="02_main.jsp?pageNumber=<%=pageNumber + 1 %>"
					class="btn btn-success btn-arraw-left">다음</a>
			<%
				}
			%>
    
    <!-- 글쓰기 버튼 생성 -->
	<a href="03_write.jsp" class="btn btn-primary pull-right">글쓰기</a>
	<br>
	<br>
				  

    </div>
    </div>
  
  <!-- //container -->

  <!-- //footer -->

<!-- //frame -->
<!-- /form -->
</body>
</html>