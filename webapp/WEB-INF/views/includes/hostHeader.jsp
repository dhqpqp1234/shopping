<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header" class="clearfix recommend_header">
	<div id="section" class="clearfix">
		<h1 id="main-title">
			<a href="${pageContext.request.contextPath}/admin"><span id="mainTitle">NOMEATS</span><br><p id="title-sub">품질좋은 정육</p></a>
		</h1>
		<ul class="clearfix gnb_pc" id="title-ul">
			<c:choose>
				<c:when test="${autherHost != null}">
					<li><a href="${pageContext.request.contextPath}/hostWriteForm" class="color-sub" style="font-size: 27px; color: black;">상품등록</a></li>
					<li><a href="${pageContext.request.contextPath}/productList" class="color-sub" style="font-size: 27px; color: black;">상품관리</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">구매/판매 내역</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">고객센터</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">선물세트</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">소고기</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">돼지고기</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">국거리</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">할인상품</a></li>
					<li><a href="" class="color-sub" style="font-size: 27px; color: black;">고객센터</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${autherHost == null}">
					<li><a href="${pageContext.request.contextPath}/adminLogin" style=" color: black; font-family: 'TTCrownMychewR'; font-size: 27px;">로그인</a></li>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/hostLogout"><button type="button" class="logoutBtn" style=" color: black; border : 0px solid #fff; font-family: 'TTCrownMychewR'; font-size: 27px;">로그아웃</button></a>
					<a href="" style=" margin-left : 10px; color: grey; font-family: 'TTCrownMychewR'; font-size: 27px;">${autherHost.buyerName}님</a>
				</c:otherwise>
			</c:choose>
		</ul>
		
	</div>
</div>

<script>


	
</script>
