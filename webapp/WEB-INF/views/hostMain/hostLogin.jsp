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
			<h1 id="log-title">MANAGER LOGIN</h1>	
		<!-- Title -->
		
		<!-- login content -->
		
		<div class="layer_fix layer_unfix pop_login pop_mem_reserve" id="Hlog-content">
			<section id="login-input">
				<form id="loginForm" action="${pageContext.request.contextPath}/hostLogin" autocomplete="off" method="post" novalidate="novalidate">
					<div class="login-id">
						<!-- focus / err -->
						<input type="email" name="buyerId" id="log-id" placeholder="아이디를 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='아이디를 입력해 주세요.'">
						<button type="button" class="reset_val">초기화</button>
					</div>
					<div class="login-pw">
						<input type="password" name="buyerPw" id="log-pw" placeholder="비밀번호를 입력해 주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='비밀번호를 입력해 주세요.'">
						<button type="button" class="reset_val">초기화</button>
					</div>
					<div id="logBtn">
						<button class="log-btn" type="button" id="loginBtn">
							<span>로그인</span>
						</button>
						<button class="log-btn" type="button">
							<a href="${pageContext.request.contextPath}/adminJoinForm">회원가입</a>
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
	
//로그인

$("#loginBtn").on("click",function(){
	
	var buyerId = $("#log-id").val();
	var buyerPw = $("#log-pw").val();
	
	var hostVo = {
			buyerId : buyerId,
			buyerPw : buyerPw
	}
	
	
	$.ajax({
		url : "${pageContext.request.contextPath}/hostLogin",		
		type : "post",
		data : JSON.stringify(hostVo),
		contentType : "application/json",
		dataType : "text",
		success : function(result) {
			console.log(result);
			
			if(result == "ok"){
				window.location.href="${pageContext.request.contextPath}/admin"
			}else{
				alert("아이디 비밀번호를 확인해 주세요.");
			}
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
		
	});
	
});
	
</script>

</html>