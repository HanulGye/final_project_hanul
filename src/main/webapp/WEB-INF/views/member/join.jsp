<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Creative - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type='text/css'>

    <!-- Plugin CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/creative.min.css" rel="stylesheet">

  </head>

  <body id="page-top">
	<nav class="fixed-top">
	<nav class="navbar navbar-expand-lg bg-dark sticky">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mr-3"><i class="fa fa-user-circle" aria-hidden="true" style="color: white;"> login</i></li>
				<li class="nav-item mr-3"><i class="fa fa-user-plus" aria-hidden="true" style="color: white;"> Join</i></li>
				<li class="nav-item mr-3"><i class="fa fa-truck" aria-hidden="true" style="color: white;"> Order</i></li>
				<li class="nav-item" style="margin-right: 30px;"><i class="fa fa-shopping-cart" aria-hidden="true" style="color: white;"> Cart</i></li>
			</ul>
		</div>
	</nav>
    <!-- Navigation -->	
    <nav class="navbar navbar-dark navbar-expand-lg bg-dark" id="mainNav">	
      <div class="container">  
        <a class="navbar-brand js-scroll-trigger" href="#go_to_top">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
             <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          PlayStation
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="#">PlayStation 4</a>
		         <a class="dropdown-item text-light" href="#">PlayStation VR</a>
		         <a class="dropdown-item text-light" href="#">PlayStation 3</a>
		         <a class="dropdown-item text-light" href="#">PlayStation Vita	</a>
		       </div>
		     </li>
            <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Nintendo
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="#">Nintendo Switch</a>
		         <a class="dropdown-item text-light" href="#">Nintendo 3DS</a>
		       </div>
		     </li>
		     <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          XBox
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="#">XBox One</a>
		         <a class="dropdown-item text-light" href="#">XBox 360</a>
		       </div>
		     </li>
		     <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Etc
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="#">Hardware</a>
		         <a class="dropdown-item text-light" href="#">Peripheral</a>
		       </div>
		     </li>
		     <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Community
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="#">Notice</a>
		         <a class="dropdown-item text-light" href="#">Review</a>
		         <a class="dropdown-item text-light" href="#">QnA</a>
		         <a class="dropdown-item text-light" href="#">Off-line Market</a>
		         <a class="dropdown-item text-light" href="#">What's New</a>
		       </div>
		     </li>
          </ul>
        </div>
      </div>
    </nav>
	</nav>
	<!-- navigation 끝 각 메뉴별 링크 걸어둘 때까진 냅두기 -->

    
    <div id="margin-top-container">
		<h1 class="text-center display-4 mb-5">Join Us</h1>
      	
      	<form class="pt-5 join_form_style">
		  <div class="form-group">
		    <input type="email" class="form-control" placeholder="사용하실 ID를 입력해주세요.(수신가능 E-mail)">
		  </div>
		  <div class="form-group">
		    <input type="password" class="form-control" placeholder="영문+숫자+특수문자 8~16자리(특수문자 괄호()는 사용 불가)">
		  </div>
		  <div class="form-group">
		    <input type="password" class="form-control" placeholder="비밀번호를 다시 입력해주세요.">
		  </div>
		  <div class="form-group">
		    <input type="text" class="form-control" placeholder="이름을 입력해주세요.">
		  </div>
		  <div class="form-group">
		    <input type="tel" class="form-control" placeholder="휴대전화 번호를 입력해주세요.('-'표 제외)">
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">
		     이용약관
		    </label>
		    <a href="#" class="font-weight-bold pl-5 offset-lg-9">전문보기</a>
		    <textarea class="text-sm form-control" id="exampleFormControlTextarea1" readonly class="form-control-plaintext" rows="8">
		    	이용약관 상세 내용
		    </textarea>
		    <div class="form-check">
  				<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
  				<label class="form-check-label" for="defaultCheck1">
    				[필수] 이용약관에 동의합니다.
				</label>
			</div>
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">
		    	개인정보 수집, 이용 동의
		    </label>
		    <table class="table">
		    	<colgroup>
					<col style="width:20%">
					<col style="width:30%">
					<col style="width:30%">
					<col style="width:20%">
				</colgroup>
		    	<thead class="thead">
		    		<tr>
						<th class="text-center" scope="col">일시</th>
						<th class="text-center" scope="col">수집항목</th>
						<th class="text-center" scope="col">수집목적</th>
						<th class="text-center" scope="col">보유기간</th>
					</tr>
		    	</thead>
		    	<tbody>
		    		<tr>
						<td>가입시</td>
						<td>아이디, 이메일, 비밀번호, 이름, 휴대폰 번호</td>
						<td>회원식별 및 연락</td>
						<td class="font-weight-bold">회원탈퇴시까지</td>
					</tr>
					<tr>
						<td>최초 구매시	</td>
						<td>성별, 생년월일, 휴대폰 번호, DI</td>
						<td>본인확인</td>
						<td class="font-weight-bold">회원탈퇴시까지</td>
					</tr>
					<tr>
						<td>상품 주문시</td>
						<td>수령인 정보(이름, 연락처, 주소), 결제수단 정보</td>
						<td>상품 주문 및 배송 등 구매계약의 이행, 상품구매 관련문의사항과 반품, 환불등 민원사항의 상담 및 처리</td>
						<td class="font-weight-bold">전자상거래법 등 관련 법령에 따른 보관기간</td>
					</tr>
		    	</tbody>
		    </table>
		    <div class="form-check">
  				<input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
  				<label class="form-check-label" for="defaultCheck2">
    				[필수] 개인정보 수집, 이용 동의
				</label>
				<p>※ 약관 및 개인정보 처리방침은 홈페이지 하단에 전문이 게재되어 있습니다.</p>
				<p>※ 이용약관 및 개인정보 수집.이용 내용에 대해 동의 거부가 가능하며, 
					이 경우 회원가입 및 관련 서비스는 이용이 불가합니다.
				</p>
			</div>
		  </div>
		  <div class="form-check">
  				<input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
  				<label class="form-check-label" for="defaultCheck3">
    				(선택) 쇼핑정보 E-mail 수신 동의
				</label>
		  </div>
		  <div class="form-check">
  				<input class="form-check-input" type="checkbox" value="" id="defaultCheck4">
  				<label class="form-check-label" for="defaultCheck4">
    				(선택) 쇼핑정보 SMS 수신 동의
				</label>
				<br>
				<br>
				<p>※ 선택항목의 경우 동의하지 않아도 불이익을 받지 않습니다.</p>
				<p class="font-weight-bold">※ 만 14세 미만은 회원가입 및 서비스 이용이 불가합니다.</p>
		  </div>
		  <button class="my-5 btn btn-dark btn-lg btn-block">회원가입 하기</button>	
		</form>
      
      
    </div>
     
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">문의사항이 있으신가요?</h2>
            <hr class="my-4">
            <p class="mb-5">문의 사항의 경우, 아래의 이메일 혹은 전화번호로 연락 주십시오.<br> (전화는 09:00 ~ 18:00)</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
        	<i class="fa fa-user-circle fa-3x mb-3 sr-contact-1"></i>
        	<p>LogIn</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
            <p>123-456-6789</p>
          </div>
        </div>
        <div class="row">
         <div class="col-lg-4 ml-auto text-center">
        	<i class="fa fa-user-plus fa-3x mb-3 sr-contact-1"></i>
        	<p>Join</p>
         </div>
         <div class="col-lg-4 mr-auto text-center">
            <i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">adminster@test.com</a>
            </p>
          </div>
        </div>
        <div class="row">
         <div class="col-lg-4 ml-auto text-center">
         	<i class="fa fa-map-marker fa-3x mb-3"></i>
        	<p>매장 안내</p>
         </div>
         <div class="col-lg-4 mr-auto text-center">
         	<i></i>
        	<p></p>
         </div>
        </div>
      </div>
    </section>

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

