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
		<!-- content -->

		<!-- //footer -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->
	
</body>

<script type="text/javascript">


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