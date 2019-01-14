<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type='text/css'>
	<!-- kakao -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <!-- Plugin CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/creative.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
 <div id="loginWindow">
 	<img class="img_size my-4" alt="" src="${pageContext.request.contextPath}/resources/img/icon_img/test_logo.png">
 	<h1 class="display-4 my-4 text-center">L.O.G.I.N</h1>
 	<form action="" class="login_form_style mx_5 my_5">
 		<div class="form-group text_box_sizing">
		    <input type="email" class="form-control" placeholder="E-mail 주소 입력">
		</div>
		<div class="form-group text_box_sizing">
			<input type="password" class="form-control" placeholder="비밀번호 입력">
		</div>
		<div class="row">
		<div class="col-sm form-group" style="margin-left: 12%">
		  	<input class="form-check-input" type="checkbox" value="" id="maintain_login_status">
  			<label class="form-check-label font_sizing" for="maintain_login_status">
    			로그인 상태를 유지합니다.
			</label>
		</div>
		<a class="col-sm font_sizing text-center" href="#">비밀번호를 잊어버리셨나요?</a>
		
		</div>
		<div class="row">
			<p class="font_sizing col-sm text-center">아직 계정이 없으신가요?</p>
			<a class="font_sizing col-sm text-center" href="#">등록하러 가기</a>		  
		</div>
		<div class="ml_25p">
			<button type="button" class="btn btn-dark btn_lg btn_sizing mt-4 mb-4">Login</button>
			<div>
				<a id="kakao-login-btn"></a>
				<a href="http://developers.kakao.com/logout"></a>
			</div>
		</div>
		<a class="font_sizing ml_30p_bold" href="#">비회원 주문번호 조회</a>
		  		
 	</form>
 </div>
 

 
 
 	
 	<!-- kakao script -->
 	<script type='text/javascript'>
  		//<![CDATA[
    	// 사용할 앱의 JavaScript 키를 설정해 주세요.
    	Kakao.init('8855bdefcad85a49302a2c5061b45c6d');
   		 // 카카오 로그인 버튼을 생성합니다.
   		Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        alert(JSON.stringify(authObj));
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
  	//]]>
	</script>
 	
 	
 	<!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/resources/js/creative.min.js"></script>
</body>
</html>