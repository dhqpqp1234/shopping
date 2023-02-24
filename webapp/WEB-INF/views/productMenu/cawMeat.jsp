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
		<h1 id="Hnav-title">CAW MEAT</h1>	
		<!-- Title -->
		
		<!-- center content -->
		<div id="grid" class="swiper">
			<ul class="swiper-wrapper">
			<c:set var="i" value="0"/>
			<c:set var="j" value="2"/>
			<c:forEach var="cList" items="${cList}" varStatus="status">
				<c:if test ="${i%j == 0}">
				<li style="344px;">
				</c:if>
					<!-- 상품 전체 div -->
					<div class="mun-prd-list-cover">
						<!-- 상품사진 div -->
						<div class="mun-prd-thumb">
							<a href="">
								<img id="set-img" src="${pageContext.request.contextPath}/upload/${cList.saveName}">
							</a>
						</div>
						<!-- 상품사진 div -->
						<!-- 상품가격정보 -->
						<div class="mun-prd-info">
							<a href="" class="menuFont" style="color: black;">
								<span>${cList.productNm}<br>${cList.price}원</span>
							</a>
						</div>
						<!-- 상품가격정보 -->
					</div>
					<!-- 상품 전체 div -->
				<c:if test="${i%j == j-1}">
				</li>
				</c:if>
				<c:set var="i" value="${i+1}"/>
			</c:forEach>	
			</ul>
		</div>
		<!-- center content -->
		
		<!-- 페이징 -->
			<div id="paging">		
				<div>
                    <c:if test="${pagination.curRange ne 1 }">	<!-- 현재 블록이 1과 같지않다면 처음버튼-->
                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
                    </c:if>
                    <c:if test="${pagination.curPage ne 1}">	<!-- 현재 페이지가 1과 같지 않다면 이전버튼 -->
                        <a href="#" onClick="fn_paging('${pagination.prevPage }')" style="color : black;">[이전]</a> 
                    </c:if>
                    <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
                        <c:choose>
                            <c:when test="${pageNum eq  pagination.curPage}">	<!-- pageNum이 현재 블록과 같다면 페이지번호 -->
                                <span style="font-weight: bold;"><a href="${pageContext.request.contextPath}/gifrSet?curPage=${pageNum}" style="color : black;" >${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>	<!-- 아니면 페이지번호 -->
                                <a href="#" style="color : black;" onClick="fn_paging('${pageNum }')">${pageNum}</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>	<!-- 현재 블록이 총페이지수랑 같지 않고 총페이지수가 0보다크면 다음페이지 보이기 -->
                    <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
                        <a href="#" style="color : black;" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
                    </c:if>		<!-- 현재블록이 총 블록수랑 같지않고 총블록수가 0보다 클때 끝버튼 보여주기-->
                    <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a> 
                    </c:if>
                </div>
                <!-- 검색 -->
                <form action="${pageContext.request.contextPath}/cawMeat">
	                <div id="giftSearch">
	                	<select name="searchType" id="searchSelBox">
	                		<option value="searchTitle">상품명</option>
	                		<option value="searchCate">분류</option>
	                	</select>
	                	<input type="text" name="keyWord">
	                	<button type="submit" id="searchBtn">검색</button>
	                </div>
               </form>
           	   <!-- 검색 -->
              <div>
                  총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }
              </div>
	     </div>   
	    <!-- 페이징 -->
		
		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->

</body>

<script type="text/javascript">


	
</script>

</html>