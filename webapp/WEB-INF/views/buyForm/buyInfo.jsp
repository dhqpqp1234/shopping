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
		<h1 id="Hnav-title">BUY INFO</h1>	
		<!-- Title -->
					<div id="buyName">
					<span>구매 정보</span>
					<div>
						<span>상품명</span> : <span>이름</span>
					</div>
					<div>
						<span>수량</span> : <button type="button">-</button><span>1</span><button type="button">+</button>
					</div>
					<div>
						<span>가격</span> : <span>10원</span>
					</div>
					</div>
					<div>
						<span>배송정보</span>
					</div>
				<!-- 사진이미지 -->
				<div class="Productsstyle__ProductImageWrapper-sc-13cvfvh-11 fuesQh">
					<!-- 사진 -->
					<div class="sc-kxynE kFKHOr">
						<div class="sc-LKuAh NhTxc">
							<img src="${pageContext.request.contextPath}/assets/image/soup meat.jpg" class="sc-iBEsjs ecWVIk">
						</div>
					</div>
					<!-- 사진 -->
				</div>
				<!-- 사진이미지 -->
				<!-- 설명 -->
				<div class="Productsstyle__ProductImageWrapper-sc-13cvfvh-11 fuesQh">
					<div class="sc-kxynE kFKHOr">
					<input id="conInput" type="text" name="" value="설명글">
					</div>
				</div>
				<!-- 설명 -->
		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->

</body>

<script type="text/javascript">


	
</script>

</html>