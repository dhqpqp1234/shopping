<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JISTIE</title>
</head>

	<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<!-- 달력 ui -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/include.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main.css">
	

<body>
	<!-- wrap -->
	<div id="wrap" class="wrap show">
	
	<!-- boardHeader -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
	<!-- boardHeader -->
	
	<!-- nav -->
		<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>
	<!-- nev -->
	
	<!-- Title -->
		<h1 id="nav-title">${autherUser.name}님 블로그 입니다 ~ ♡</h1>	
	<!-- Title -->
	
	<!-- center content -->
		<div id="boardWite">
			<form action="${pageContext.request.contextPath}/board/write" method="get">
			
				<div id="writeTitle">
					<h1>블로그 작성</h1>
				</div>
			
				<!-- 제목 -->
				<div id="title-group">
					<label id="write-title" for="txt-title">제목</label>
					<input type="text" id="txt-title" name="title" value="" placeholder="제목을 입력해 주세요">
				</div>
				<!-- 이름 -->
				<div id="name-group">
					<label id="write-name" for="txt-title">글쓴이</label>
					<input type="text" id="txt-name" name="name" value="" >
				</div>
				<!-- 내용 -->
				<div>
					<label id="write-content" for="txt-title">내용</label>
					<textarea name="content" id="txt-contnet" value="">
					</textarea>
				</div>		
				<div id="writeBtns">
					<button type="submit" id="write-Btn">작성</button>
					<a href="${pageContext.request.contextPath}/boardMain"><button id="cancelBtn" type="button">취소</button></a>
				</div>			
			</form>
		</div>
	<!-- center content -->
	
	<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- footer -->
	
	</div>
	<!-- wrap -->
</body>
</html>