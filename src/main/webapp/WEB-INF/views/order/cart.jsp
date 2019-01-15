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
      	<h1 class="text-center display-4 mb-5">Cart</h1>
      	<div class="row">
         <div class="col-lg-7">
         	<table class="table">
			  <colgroup>
					<col style="width:70%">
					<col style="width:10%">
					<col style="width:10%">
				</colgroup>
			  <thead class="table-outerfont-size">
			    <tr>
			      <th colspan="4">전체 삭제</th>
			    </tr>
			  </thead>
			  <tbody class="table-outerfont-size">
			    <c:forEach var="i" begin="1" end="3">
			    <tr class="tr-border-style">
			      <td>
			      	<table class="cart-innerTable-style">
			      		
			      		<tr>
			      			<td rowspan="5"><img class="pr-3" style="height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/product_test_img/rockman_11.jpg"></td>
			      		</tr>
			      		<tr>
			      			<td class="text-center font-weight-bold">Rockman 11</td>
			      		</tr>
			      		<tr>
			      			<td>플랫폼 : PS4</td>
			      		</tr>
			      		<tr>
			      			<td class="border-none">옵션 : 옵션내용이 들어가는 영역입니다.</td>
			      			
			      		</tr>
			      		<tr>
			      			<td class="border-none">수량 : 1</td>
			      		</tr>
			      		<tr>
			      			<td class="text-center font-weight-bold" colspan="2"><button type="button" class="rounded btn btn-dark btn-sm" data-toggle="modal" data-target="#option_change_window">옵션 & 수량변경</button></td>
			      		</tr>
			      	</table>
			      </td>
			      <td class="pt-4 font-weight-bold">45,000 원</td>
			      <td>
			      	<button type="button" class="close" aria-label="Close">
  						<span aria-hidden="true">&times;</span>
					</button>
				  </td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
         </div>	
         
         <div class="col-lg-3 offset-lg-2 ">
         	<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">주문내역</p>
			      </li>
			      <li class="nav-item col-lg-2">
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-left ml-3">
				
				<table class="mt-4" style="width: 100%">
					<tbody>
						<tr>
							<td>상품금액</td>
							<td class="text-right">45,950 원</td>
						</tr>
						<tr>
							<td>예상배송비</td>
							<td class="text-right">2,500 원</td>
						</tr>
						<tr>
							<td>상품 할인금액</td>
							<td class="text-right">0 원</td>
						</tr>
						<tr>
							<td>주문 할인금액</td>
							<td class="text-right">0 원</td>
						</tr>
					</tbody>
				</table>
				<table class="mt-3" style="width: 100%">
					<tbody>
						<tr>
							<td class="font-weight-bold">총 결제 예정 금액</td>
							<td class="font-weight-bold text-right">48,450 원</td>
						</tr>
						<tr>
							<td class="pt-3" colspan="2"><button type="button" class="rounded btn btn-danger btn-block">주문하기</button></td>						
						</tr>
					</tbody>
				</table>
				<ul class="list-unstyled font_sizing mt-4">
				  
				  <li class="font-weight-bold">※ 배송비 안내
				    <ul class="list-unstyled font-weight-light font_sizing2">
				      <li># 기본 배송비 2,500 원/ 도서산간지역 추가비용</li>
				      <li># 50,000원 이상 구매시 배송비 무료.</li>
				    </ul>
				  </li>
				  <li class="font-weight-bold mt-4">※ 프로모션 코드 및 적립금 사용 안내
				    <ul class="list-unstyled font-weight-light font_sizing2">
				      <li># 프로모션 코드 사용에 따라 최종 금액이 변동될 수 있습니다.</li>
				      <li># 적립금은 최소 1,000 원 이상부터 사용 가능합니다.</li>
				    </ul>
				  </li>
				</ul>
			  </div>
			</div>
         </div>
      	</div>
      	
      
      
    </div>
     
    <section id="contact">
      <div class="container footer_margin">
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


<div class="modal fade" tabindex="-1" role="dialog" id="option_change_window">
<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
<div class="modal-content">
<div class="modal-body">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
	  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
      </div>
    </div>
    <div class="row my-5">
    	<div class="col-md-12 text-center">
    		<p class="h3">Option & Quantity</p>
    	</div>
    </div>
    <div class="row mb-5">
      <div class="col-md-6"><img class="ml-4" style="width: 100%" alt="" src="${pageContext.request.contextPath}/resources/img/product_test_img/rockman_11.jpg"></div>
      <div class="col-md-5 offset-md-1 modal_box_style">
      	<p class="h5 font-weight-bold text-center mb-3">Rockman 11</p>
      	<p class="mt-4">옵션</p>
      	<select class="form-control form-control-sm mb-4">
  			<option>[옵션 1] 옵션 1 문구 영역입니다.</option>
  			<option>[옵션 2] 옵션 2 문구 영역입니다.</option>
		</select>
		<p class="mt-4">수량</p>
		<div class="input-group mb-4">
		  <input type="text" readonly class="form-control-plaintext" placeholder="기존 수량 표시" aria-label="Recipient's username with two button addons" aria-describedby="button-addon4">
		  <div class="input-group-append" id="button-addon4">
		    <button class="btn btn-outline-dark rounded-0" type="button">+</button>
		    <button class="btn btn-outline-dark rounded-0" type="button">-</button>
		  </div>
		</div>
      	<button type="button" class="rounded btn btn-danger btn-block">변경하기</button>
      </div>
    </div>
  </div>
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

