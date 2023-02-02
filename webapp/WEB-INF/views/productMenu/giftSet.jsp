<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>NOMEATS</title>

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
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- header -->
		<br>
		
		<!-- nav -->
		<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>
		<!-- nev -->
		
		<!-- Title -->
		<h1 id="Hnav-title">GIFT SET</h1>	
		<!-- Title -->
		
		<!-- center content -->
		<div id="grid" class="swiper">
			<ul class="swiper-wrapper">
			<c:forEach var="pList" items="${pList}" varStatus="status">
				<li style="344px;">
					<!-- 상품 전체 div -->
					<div class="mun-prd-list-cover">
						<!-- 상품사진 div -->
						<div class="mun-prd-thumb">
							<a href="">
								<img id="set-img" src="${pageContext.request.contextPath}/upload/${pList.saveName}">
							</a>
						</div>
						<!-- 상품사진 div -->
						<!-- 상품가격정보 -->
						<div class="mun-prd-info">
							<a href="" style="color: black;">
								<span>${pList.productNm}<br>${pList.price}원</span>
							</a>
						</div>
						<!-- 상품가격정보 -->
					</div>
					<!-- 상품 전체 div -->
				</li>
			</c:forEach>	
			</ul>
		</div>
		<!-- center content -->

		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->

</body>

<script type="text/javascript">


	
</script>

</html>