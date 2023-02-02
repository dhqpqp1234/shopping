<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header" class="clearfix recommend_header">
	<div id="section" class="clearfix">
		<h1 id="main-title">
			<a href="${pageContext.request.contextPath}/main"><span id="mainTitle">NOMEATS</span><br><p id="title-sub">품질좋은 정육</p></a>
		</h1>
		<ul class="clearfix gnb_pc" id="title-ul">
			<li><a href="${pageContext.request.contextPath}/giftSet" class="color-sub" style="font-size: 27px; color: black;">선물세트</a></li>
			<li><a href="" class="color-sub" style="font-size: 27px; color: black;">소고기</a></li>
			<li><a href="" class="color-sub" style="font-size: 27px; color: black;">돼지고기</a></li>
			<li><a href="" class="color-sub" style="font-size: 27px; color: black;">국거리</a></li>
			<li><a href="" class="color-sub" style="font-size: 27px; color: black;">할인상품</a></li>
			<li><a href="" class="color-sub" style="font-size: 27px; color: black;">고객센터</a></li>
			
			<c:choose>
				<c:when test="${autherUser == null}">
					<li><a href="${pageContext.request.contextPath}/loginForm" style=" color: black; font-family: 'TTCrownMychewR'; font-size: 27px;">로그인</a></li>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/logout"><button type="button" class="logoutBtn" style=" color: black; border : 0px solid #fff; font-family: 'TTCrownMychewR'; font-size: 27px;">로그아웃</button></a>
					<a href="" style=" margin-left : 10px; color: grey; font-family: 'TTCrownMychewR'; font-size: 27px;">${autherUser.custName}님</a>
				</c:otherwise>
			</c:choose>
		</ul>
		
	</div>
</div>

<script>


	
</script>
