<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>