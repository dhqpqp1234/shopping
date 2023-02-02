<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JIBLOG</title>
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
		<div >
			<table id="list-all">
				<thead>
					<tr>
						<th class="board-list" style="width: 80px; ">번호</th>
						<th class="board-list" style="width: 553px;">제목</th>
						<th class="board-list" style="width: 150px; ">글쓴이</th>
						<th class="board-list" style="width: 230px;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${bMap.bList}" var="bList">
						<tr>
							<td class="lisr-content">${bList.boardNo}</td>
							<td class="lisr-content"><a href="" id="bTitle-a">${bList.title}</a></td>
							<td class="lisr-content">${bList.name}</td>
							<td class="lisr-content">${bList.regdate}</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>		
			<form action="${pageContext.request.contextPath }/board/search" method="get">
				<div id="board-search">
					<select id="search-select">
						<option>제목</option>
						<option>글쓴이</option>
					</select>
					<input type="text" name="keyword" id="search-input">
					<button type="submit" class="log-btn" id="btn_search">검색</button>
					<a href="${pageContext.request.contextPath}/writeForm"><button class="log-btn" id="writeBtn" type="button">글쓰기</button></a>
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