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
			<h1 id="Hlog-title">MANAGER JOIN</h1>	
		<!-- Title -->
		
		<!-- join content -->
		<div class="layer_fix layer_unfix pop_login pop_mem_reserve" id="join-content">
			<section id="login-input">
				<form id="loginForm" action="${pageContext.request.contextPath}/hostJoin" autocomplete="off" method="post" novalidate="novalidate">
					<div class="join-id">
						<!-- focus / err -->
						<label class="join-label">아이디</label>
						<input type="text" id="input-id" name="buyerId" placeholder="아이디를 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='아이디를 입력해 주세요.'">
						<button type="button" class="reset_val" id="idCheck">중복체크</button>
					</div>
					<div class="join-pw">
						<label class="join-label">비밀번호</label>
						<input type="password" id="pwCheck" name="buyerPw" placeholder="비밀번호를 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='비밀번호를 입력해 주세요.'">
					</div>
					<div class="join-name">
						<label class="join-label">이름</label>
						<input type="text" name="buyerName" placeholder="이름을 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='이름을 입력해 주세요.'">
					</div>
					<div class="join-eMail">
						<label class="join-label">이메일</label>
						<input type="text" name="buyerEmail" id="input-eMail" placeholder="이메일를 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='이메일을 입력해 주세요.'">
						<button type="button" id="eMailCheck" class="reset_val">중복체크</button>
					</div>
					<div class="join-phone" style="width: auto;">
						<label class="join-label" >전화번호</label>
						<input type="text"  name="buyerPh" id="input-ph" placeholder="전화번호를 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='전화번호를 입력해 주세요.'">
						<button type="button" id="phCheck" class="reset_val">중복체크</button>
					</div>
					<div class="joBtn">
						<button class="log-btn" type="button">
							<a href="${pageContext.request.contextPath}/adminLogin">로그인</a>
						</button>
						<button class="log-btn" type="submit">
							<span>회원가입</span>
						</button>
					</div>	
				</form>
			</section>
		</div>
		<!-- login content -->

		<!-- //footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
	</div>
	<!-- wrap -->
	
</body>

<script type="text/javascript">
	//ID입력시	
	$("#idCheck").on("click",function(){
		console.log("idCheck");
		var buyerId = $("#input-id").val();
		var patternArpar = /[a-zA-Z]/;
		var patternNum = /[0-9]/;
		
		if(buyerId.length < 6){
			alert("6글자 이상 입력해주세요.");
			return false;
		}else if(buyerId == null || buyerId == ''){
			alert("아이디를 입력해주세요.");
			return false;
		}else if(!patternArpar.test(buyerId)){
			alert("영문을 입력해 주세요.");
			return false;
		}
		
		//Id 중복체크
		$.ajax({
			url : "${pageContext.request.contextPath}/hostIdCheck",		
			type : "post",
			data : JSON.stringify({"buyerId":buyerId}),
			contentType : "application/json",
			dataType : "json",
			success : function(result) {
				console.log(result);
				if(result == 0){
					alert("사용할 수 있는 아이디 입니다.");
				}else {
					alert("사용중인 아이디 입니다.");
					return false;
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
	});
	
	
	$("#eMailCheck").on("click",function(){
		var buyerEmail = $("#input-eMail").val();
		
		//eMail 중복체크
		$.ajax({
			url : "${pageContext.request.contextPath}/hostEmailCheck",		
			type : "post",
			data : JSON.stringify({"buyerEmail":buyerEmail}),
			contentType : "application/json",
			dataType : "json",
			success : function(result) {
				console.log(result);
				if(result == 0){
					alert("사용할 수 있는 이메일 입니다.");
				}else {
					alert("사용중인 이메일 입니다.");
					return false;
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
	});
	
	$("#phCheck").on("click",function(){
		var buyerPh = $("#input-ph").val();
		
		//phone 중복체크
		$.ajax({
			url : "${pageContext.request.contextPath}/hostPhCheck",		
			type : "post",
			data : JSON.stringify({"buyerPh":buyerPh}),
			contentType : "application/json",
			dataType : "json",
			success : function(result) {
				console.log(result);
				if(result == 0){
					alert("사용할 수 있는 전화번호 입니다.");
				}else {
					alert("사용중인 전호번호 입니다.");
					return false;
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
	});
	
</script>

</html>