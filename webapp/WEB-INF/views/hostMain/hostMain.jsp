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
		<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
		<!-- header -->
		<br>
		
		<!-- nav -->
		<c:import url="/WEB-INF/views/includes/hostnav.jsp"></c:import>
		<!-- nev -->
		
		<!-- Title -->
			<h1 id="Hnav-title">MANAGER PAGE</h1>	
		<!-- Title -->
		
		<!-- center content -->
				
		<div id="main-con">
			<img class="main-img" alt="" src="${pageContext.request.contextPath}/assets/image/meat cau.jpg"> 
			<img class="main-img" alt="" src="${pageContext.request.contextPath}/assets/image/meat cau2.jpg"> 
			<img class="main-img" alt="" src="${pageContext.request.contextPath}/assets/image/meat pig1.jpg"> 
			<img class="main-img" alt="" src="${pageContext.request.contextPath}/assets/image/soup meat.jpg"> 
		</div>
			
		<!-- center content -->

		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->

</body>

<script type="text/javascript">

var slideIndex = 0;
showSlides();

function showSlides(){
	var i;
	var slides = document.getElementsByClassName("main-img");
	
	for(var i=0; i < slides.length; i++){
		slides[i].style.display = "none";
	}
	slideIndex++;
	
	if(slideIndex > slides.length){
		slideIndex = 1;
	}
	slides[slideIndex - 1].style.display = "block";
	
	setTimeout(showSlides, 2000); //2초마다 이미지 change
	
}

	
</script>

</html>