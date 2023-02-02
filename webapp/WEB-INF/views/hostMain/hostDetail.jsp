<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOMEATS</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
		<!-- header -->
		<br>
		
		<!-- nav -->
		<c:import url="/WEB-INF/views/includes/hostnav.jsp"></c:import>
		<!-- nev -->
		
		<!-- Title -->
			<h1 id="log-title">PRODUCT DETAIL</h1>
		<!-- Title -->
		
		<!-- content -->
		<div id="boardWite">
			<table id="detailList">
				<thead>
					<tr>
						<th class="detailList" style="width: 150px; ">상품번호</th>
						<th class="detailList" style="width: 1080px;">${dMap.hVo.productNo}</th>
					</tr>
					<tr>
						<th class="detailList" style="width: 150px; ">상품명</th>
						<th class="detailList" style="width: 1080px;">${dMap.hVo.productNm}</th>
					</tr>
					<tr>
						<th class="detailList" style="width: 150px; ">분류</th>
						<th class="detailList" style="width: 1080px;">${dMap.hVo.categoryNm}</th>
					</tr>
					<tr>
						<th class="detailList" style="width: 150px; ">가격</th>
						<th class="detailList" style="width: 1080px;">${dMap.hVo.price}원</th>
					</tr>
					<tr>
						<th class="detailList" style="width: 150px; ">내용</th>
						<th class="detailList" style="width: 1080px;">${dMap.hVo.content}</th>
					</tr>
					<tr>
							<th class="detailList" style="width: 150px; ">사진</th>
							<th class="detailList" style="width: 1080px;">
								<c:forEach items="${dMap.fList}" var="fList">
									<img style="width: 800px; height: 500px;" src="${pageContext.request.contextPath}/upload/${fList.saveName}"><br>
								</c:forEach>	
							</th>
					</tr>
				</thead>
			</table>
		</div>
		<!-- content -->

		<!-- //footer -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->
	
</body>

<script type="text/javascript">
	

	
</script>

</html>