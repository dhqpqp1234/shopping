<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h1 id="log-title">MANAGER PAGE</h1>
		<!-- Title -->
		
		<!-- content -->
		<div id="boardWite">
			<form action="${pageContext.request.contextPath}/productWrite" method="post" enctype="multipart/form-data" >
				<div id="writeTitle">
					<h1>상품등록</h1>
				</div>
				<div id="writeSubTitle">
					<h2>상품정보</h2>
				</div>
				<!-- 상품등록 -->
				<form action="" method="get"> 
				<!-- 등록 전체 -->
				<div>
					<!-- 이미지등록 -->
					<ul id="img-ul">
						<li class="UPAMp" style="border-bottom: none;">
							<div>
								상품이미지
								<span style="color: rgb(255, 80, 88);">*</span>
								<small>(0/12)</small>
							</div>
							<div>
								<ul class="juHAat">
									<li class="gADNYc">
									이미지 등록
									<input type="file" name="file" id="inputFile" accept="image/*, .png, .jpg" multiple="multiple" onchange="setThumbnail(event);">
									</li>
									<!-- 선택한사진 -->
									<li class="" id="img-preview">
									</li>
									<!-- 선택한사진 -->
								</ul>
							</div>
						</li>
						
					<div style="padding-bottom : 18px;  border-bottom: 1px solid rgb(220, 219, 228); font-size: 17px; font-weight: normal;" class="exXLwK">
						<b>* 상품 이미지는 640x640에 최적화 되어 있습니다.</b>
						<br>
						- 이미지는 상품 등록 시 정사각형으로 잘려서 등록됩니다.
						<br>
						- 이미지를 클릭할 경우 원본 이미지를 확인할 수 있습니다.
						<br>
						- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.
						<br>
						- 큰 이미지일 경우 이미지가 깨지는 경우가 발생할 수 있습니다.
						<br>
						최대 지원 사이즈인 640 X 640으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
					</div>
					<!-- 이미지 등록 -->
					
					<!-- 상품명 -->
					<li class="UPAMp">
						<div>
							상품명
							<span style="color: rgb(255, 80, 88);">*</span>
						</div>
						<div id="itemTitle">
							<input type="text" name="productNm" value="" placeholder="상품명을 입력해 주세요.">
						</div>
					</li>	
					<!-- 상품명 -->
					
					<!-- 상품 카테고리 -->
					<li class="UPAMp">
						<div id="categoryNm">
							카테고리
							<span style="color: rgb(255, 80, 88);">*</span>
						</div>
						<div id="cateCheck">
							<input type="checkbox" name="category" value="CT001"><span class="checkSpan">소고기</span>
							<input type="checkbox" name="category" value="CT002"><span class="checkSpan">돼지고기</span>
							<input type="checkbox" name="category" value="CT003"><span class="checkSpan">국거리</span>
							<input type="checkbox" name="category" value="CT004"><span class="checkSpan">선물세트</span>
						</div>
					</li>
					<!-- 상품 카테고리 -->
					
					<!-- 가격 -->
					<li class="UPAMp">
						<div id="priceNm">
							가격
							<span style="color: rgb(255, 80, 88);">*</span>
						</div>
						<div id="priceDiv">
							<input id="priceInput" type="text" name="price" value="" placeholder="가격을 입력해 주세요."><span class="checkSpan">원</span>
						</div>
					</li>
					<!-- 가격 -->
					
					<!-- 설명 -->
					<li class="UPAMp">
						<div id="ContenNm">
							설명
							<span style="color: rgb(255, 80, 88);">*</span>
						</div>
						<div id="ContenDiv">
							<textarea id="ContenTxt" name="content" rows="" cols=""></textarea>
						</div>
					</li>
					<!-- 설명 -->
					
					<!-- 수량 -->
					<li class="UPAMp">
						<div id="">
							수량
							<span style="color: rgb(255, 80, 88);">*</span>
						</div>
						<div id="priceDiv">
							<input id="priceInput" type="text" name="itCount" value="" placeholder="수량을 입력해 주세요."><span class="checkSpan">개</span>
						</div>
					</li>
					<!-- 수량 -->
					</ul>
					</div>
					<!-- 등록 전체 -->
					<button id="writeBtn" type="submit">등록하기</button>
				</form>
				<!-- 상품등록 -->
						
				<%-- <div id="writeBtns">
					<button type="submit" id="write-Btn">작성</button>
					<a href="${pageContext.request.contextPath}/boardMain"><button id="cancelBtn" type="button">취소</button></a>
				</div>	 --%>		
			</form>
		</div>
		<!-- content -->

		<!-- //footer -->
			<%-- <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import> --%>
		<!-- footer -->
	</div>
	<!-- wrap -->
	
</body>

<script type="text/javascript">
	
function setThumbnail(event) {
    for (var image of event.target.files) {
      var reader = new FileReader();

      reader.onload = function(event) {
        var img = document.createElement("img");
        img.className = 'imgNo';
        img.width = 200;
        img.height = 200;
        img.style.position = "relative";
        var deleteBtn = document.createElement("button");
        deleteBtn.className = 'deleteBtn';
        deleteBtn.style.position = "absolute";
        
        
        img.setAttribute("src", event.target.result);
        document.querySelector("li#img-preview").appendChild(img);
        document.querySelector("li#img-preview").appendChild(deleteBtn);
      };

      console.log(image);
      reader.readAsDataURL(image);
    }
  }
	
</script>

</html>