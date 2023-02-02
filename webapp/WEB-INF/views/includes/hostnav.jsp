<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/include.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main.css">

		<!-- nav -->
			<c:if test="${autherHost != null}">
			 <div id="Hnav-menu"> 
				<ul id="nav-ul">
					<li class="nav-li"><a href="${pageContext.request.contextPath}/hostWriteForm" class="nav-a">상품등록</a></li>
					<li class="nav-li"><a href="${pageContext.request.contextPath}/productList" class="nav-a">상품관리</a></li>
					<li class="nav-li"><a href="" class="nav-a">구매/판매 내역</a></li>
					<li class="nav-li"><a href="" class="nav-a">고객센터</a></li>
				</ul>
			 </div> 
			</c:if> 
			<c:if test="${autherHost == null}">
			 <div id="NullHnav-menu"> 
				<ul id="">
					<li class="nav-li"><a href=""></a></li>
					<li class="nav-li"><a href="" class="nav-a"></a></li>
					<li class="nav-li"><a href="" class="nav-a"></a></li>
					<li class="nav-li"><a href="" class="nav-a"></a></li>
				</ul>
			 </div> 
			</c:if>
		<!-- nav -->
		
