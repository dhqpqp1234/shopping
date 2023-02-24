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
			<h1 id="log-title">MANAGERMENT</h1>
		<!-- Title -->
		
		<!-- content -->
		<div id="boardWite">
			<table id="writeList">
				<thead>
					<tr>
						<th class="productList" style="width: 150px; ">상품번호</th>
						<th class="productList" style="width: 503px;">상품명</th>
						<th class="productList" style="width: 200px; ">분류</th>
						<th class="productList" style="width: 200px;">가격</th>
						<th class="productList" style="width: 200px;">등록일</th>
						<th class="productList" style="width: 120px;">관리</th>
					</tr>
				</thead>
				<c:forEach items="${pMap.pList}" var="pList">
					<tbody>
							<tr>
								<td class="pNo"  class="product-content">${pList.productNo}</td>
								<td class="product-content"><a href="${pageContext.request.contextPath}/productSelectDetail?productNo=${pList.productNo}" id="productNm-a">${pList.productNm}</a></td>
								<td class="product-content">${pList.categoryNm}</td>
								<td class="product-content">${pList.price}원</td>
								<td class="product-content">${pList.regDttm}</td>
								<td class="product-content" id="td-no"  ><a href="${pageContext.request.contextPath}/hostDelete?productNo=${pList.productNo}" data-no="${pList.productNo}" class="productDelete" style="color: grey;">삭제</a></td>
							</tr>
					</tbody>
				</c:forEach>	
			</table>
		</div>
		<!-- 페이징 -->
			<div id="Mpaging">		
				<div id="pagingNo">
                    <c:if test="${pagination.curRange ne 1 }">	<!-- 현재 블록이 1과 같지않다면 처음버튼-->
                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
                    </c:if>
                    <c:if test="${pagination.curPage ne 1}">	<!-- 현재 페이지가 1과 같지 않다면 이전버튼 -->
                        <a href="#" onClick="fn_paging('${pagination.prevPage }')" style="color : black;">[이전]</a> 
                    </c:if>
                    <c:forEach step="1" var="pageNum" begin="${pagination.startPage}" end="${pagination.endPage}">
                        <c:choose>
                            <c:when test="${pageNum eq  pagination.curPage}">	<!-- pageNum이 현재 블록과 같다면 페이지번호 -->
                                <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')" style="color : black;" >${pageNum }</a></span> 
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
                <form action="${pageContext.request.contextPath}/productList">
	                <div id="hostSearch">
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
		<!-- content -->

		<!-- //footer -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->
	
</body>

<script type="text/javascript">

function fn_paging(curPage) {
	location.href = "/shopping/productList?curPage=" + curPage;
	}


$(".productDelete").on("click",function(){
	
	var productNo = $(this).data('no');
	console.log(productNo);
	
	$.ajax({
		url : "${pageContext.request.contextPath}/hostDelete",		
		type : "post",
		data : {
			productNo : productNo
		},
		contentType : "application/json",
		dataType : "json",
		success : function(result) {
			console.log("del"+productNo);
			alert("삭제 완료")
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
		
	});
	
});

	
</script>

</html>