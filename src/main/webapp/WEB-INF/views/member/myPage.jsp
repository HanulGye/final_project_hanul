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

	<!-- kakao -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

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
				<li class="nav-item mr-3"><a id="login_popup" href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-user-circle" aria-hidden="true" style="color: white;"> login</i></a></li>
				<li class="nav-item mr-3"><i class="fa fa-user-plus" aria-hidden="true" style="color: white;"> Join</i></li>
				<li class="nav-item mr-3"><i class="fa fa-truck" aria-hidden="true" style="color: white;"> Order</i></li>
				<li class="nav-item" style="margin-right: 30px;"><i class="fa fa-shopping-cart" aria-hidden="true" style="color: white;"> Cart</i></li>
			</ul>
		</div>
	</nav>
    <!-- Navigation -->	
    <nav class="navbar navbar-dark navbar-expand-lg bg-dark" id="mainNav">	
      <div class="container">  
        <a class="navbar-brand js-scroll-trigger" href="#go_to_top">HOME</a>
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
      	<div class="row">
      	 <div class="col-lg-2">
		  <h2 class="my-4 left_menu_style">My Page</h2>	
		  <ul class="list-group list-group-flush">
		  	<li class="list-group-item list-group-item-action">
		  		<a class="font-weight-bold" href="#"><i class="fa fa-user-circle mr-2" aria-hidden="true" style="color: grey;"></i>회원이름</a>
		  	</li>
		  	<li class="list-group-item list-group-item-action">
		  		<a class="font-weight-bold" href="#">회원등급 현황</a>
		  	</li>
		  	<li class="list-group-item list-group-item-action">
		  		<p class="font-weight-bold">쇼핑정보</p>
		  		<a class="font-weight-light sub_line_height" href="#">주문 배송</a><br>
		  		<a class="font-weight-light sub_line_height" href="#">취소/반품</a><br>
		  		<a class="font-weight-light sub_line_height" href="#">반품 현황</a>
		  	</li>
		  	<li class="list-group-item list-group-item-action">
		  		<p class="font-weight-bold">활동정보</p>
		  		<a class="font-weight-light sub_line_height" href="#">상품리뷰 작성</a><br>
		  		<a class="font-weight-light sub_line_height" href="#">열람한 공략</a><br>
		  		<a class="font-weight-light sub_line_height" href="#">오늘 본 상품</a>
		  	</li>
		  	<li class="list-group-item list-group-item-action">
		  		<p class="font-weight-bold">나의정보</p>
		  		<a class="font-weight-light sub_line_height" href="#">배송지 관리</a><br>
		  		<a class="font-weight-light sub_line_height" href="#">회원정보 관리</a><br>
		  		<a class="font-weight-light sub_line_height" href="#">회원탈퇴</a>
		  	</li>
		  	<li class="list-group-item list-group-item-action">
		  		<a class="font-weight-bold" href="#">1:1 문의</a>
		  	</li>
		  	<li class="list-group-item list-group-item-action">
		  		<p>고객센터 번호란</p>
		  	</li>
		  </ul>

         </div>
         <div class="col-lg-10 pl-5">
         	<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-2">최근 주문 내역</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right" href="#">더 보기</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-center">
			     <div class="row">
					<table class="table table-hover ml-5 table_sizing">
						<colgroup>
							<col style="width:13%">
							<col style="width:61%">
							<col style="width:13%">
							<col style="width:13%">
						</colgroup>
						
						<thead class="thead">
							<tr>
								<th class="text-center" scope="col">주문일자</th>
								<th class="text-center" scope="col">상품명</th>
								<th class="text-center" scope="col">결제금액</th>
								<th class="text-center" scope="col">배송현황</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" begin="1" end="5" step="1">
							<tr>
								<td class="pl-4">19-01-11</td>
								<td class="text-center">[PS4] 메탈기어 솔리드 V 팬텀 오브 페인</td>
								<td class="text-center">45,000</td>
								<td class="text-center">배송 준비중</td>
							</tr>
							</c:forEach>	
						</tbody>
					</table>
		            
		          </div>
			  </div>
			</div>
			
			<div class="card my-5">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-2">오늘 본 상품</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right" href="#">더 보기</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-center">
			     <div class="row">
					<c:forEach var="i" begin="1" end="4" step="1">
					<div class="col-lg-3 col-md-6 mb-4">
		              <div class="card h-100">
		                <a href="#"><img class="card-img-top p-2" src="${pageContext.request.contextPath}/resources/img/product_test_img/0090020007002.jpg" alt="" style="height: 264px;"></a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="#">Item Two</a>
		                  </h4>
		                  <h5>$24.99</h5>
		                </div>
		              </div>
		            </div>			
					</c:forEach>
		            
		          </div>
			  </div>
			</div>
			
			<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-2">상품 리뷰 관리</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right" href="#">더 보기</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-center">
			     <div class="row">
					<table class="table table-hover ml-5 table_sizing">
						<colgroup>
							<col style="width:70%">
							<col style="width:15%">
							<col style="width:15%">
						</colgroup>
						
						<thead class="thead">
							<tr>
								<th class="pl-4 text-left" scope="col">리뷰 제목</th>
								<th class="text-center" scope="col">평가</th>
								<th class="text-center" scope="col">날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" begin="1" end="5" step="1">
							<tr>
								<td class="pl-4 text-left">상품 리뷰 제목입니다.</td>
								<td class="text-center"><small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small></td>
								<td class="text-center">19-01-11</td>
							</tr>
							</c:forEach>	
						</tbody>
					</table>
		            
		          </div>
			  </div>
			</div>
			
			
         </div>
      	</div>
      	
      
      
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
    
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
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
    </div>
  </div>
</div>
   


	<!-- kakao api -->
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

