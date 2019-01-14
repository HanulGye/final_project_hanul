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
      	<h1 class="text-center display-4 mb-5">Order</h1>
      	<div class="row">
         <div class="col-lg-8">
         	<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">주문고객</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right btn_plus_minus" href="#">+</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-left ml-3">
				<p>이름 데이터</p>
				<p>전화번호 데이터</p>
				<p>이메일 데이터</p>
			  </div>
			</div>
			
			<div class="card mt-5">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">배송지 정보</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right btn_plus_minus" href="#">+</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-left ml-3">
				<div class="card">
				  <div class="card-header text-center">
				    <ul class="nav nav-tabs card-header-tabs row">
				      <li class="nav-item col-lg-6">
				        <a class="nav-link" href="#">이전 주소</a>
				      </li>
				      <li class="nav-item col-lg-6">
				        <a class="nav-link active" href="#">새로 입력</a>
				      </li>
				    </ul>
				  </div>
				  <div class="card-body">
				    <form action="">
				    	<div class="form-group row">
		    				<div class="col-lg-6">
			    				<label class="form-control-label" for="recipient">
	    							받으시는 분
								</label>
			    				<input type="text" id="recipient" class="form-control" placeholder="이름">
		    				</div>
		    				<div class="col-lg-6">
			    				<label class="form-control-label" for="phone_number">
	    							연락처
								</label>
			    				<input type="tel" id="phone_number" class="form-control" placeholder="-없이 입력">
		    				</div>
		 				</div>
		 				<div class="form-group">
			    				<label class="form-control-label" for="delivery_address">
	    							배송주소
								</label>
			    				<span class="row margin_two_per">
				    				<input type="text" id="delivery_address" class="form-control col-lg-10" placeholder="예) 문래동 강서타워,선유로 82">
				    				<button type="button" class="btn btn-light col-lg-2 btn_radius">검색</button>
			    				</span>
			    				<input type="text" class="mt-1 form-control" placeholder="나머지 주소 입력">
		    		   </div>
		    		   <div class="form-check ml-2">
			  				<input class="form-check-input" type="checkbox" value="" id="del_check">
			  				<label class="form-check-label" for="del_check">
			    				기본 주소 사용
							</label>
					  </div>
					  <div class="input-group my-3">
						  <select class="custom-select">
						    <option selected>배송 메모를 선택해주세요.</option>
						    <option value="1">배송시, 연락 부탁드립니다.</option>
						    <option value="2">빠른 배송 부탁드립니다.</option>
						    <option value="3">직접입력</option>
						  </select>
					  </div>
					  <small>주문한 상품은 영업일 3일 (공휴일/주말 제외) 이내에 받아보실수 있습니다.</small><br>
					  <small>상품준비에 에러사항이 있거나, 발송지연이 불가피할 경우 고객께 안내연락을 드립니다.</small>
					  <button type="button" class="my-4 btn btn-dark btn-lg btn-block">다음 단계 진행</button>
				    </form>
				  </div>
				</div>
			  </div>
			</div>
			
			<div class="card mt-5">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">할인/혜택 사용</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right btn_plus_minus" href="#">+</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-left ml-3">
				<label class="form-control-label" for="promo_code">
	    		 쿠폰 코드 
				</label>
				<span class="row">
			    <input type="text" id="promo_code" class="form-control col-lg-10" placeholder="쿠폰 코드 입력">
			    <button type="button" class="btn btn-light col-lg-2 btn_radius">적용</button>
			    </span>
			    
			    <label class="form-control-label mt-3" for="point_usable">
	    		 적립금 사용 
				</label>
				<span class="row">
			    <input type="text" id="point_usable" class="form-control col-lg-10" placeholder="회원별 사용가능 적립금 명시">
			    <button type="button" class="btn btn-light col-lg-2 btn_radius">적용</button>
			    </span>
			  </div>
			</div>
			
			<div class="card mt-5">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">결제수단 선택</p>
			      </li>
			      <li class="nav-item col-lg-2">
			        <a class="nav-link font-weight-bold text-right btn_plus_minus" href="#">+</a>
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body text-left ml-3">
				<div class="btn-group-vertical btn-block my-3" role="group">
				 <button type="button" class="btn btn-dark btn_radius">신용카드</button>
				 <button type="button" class="btn btn-dark btn_radius">실시간계좌이체</button>
				 <button type="button" class="btn btn-dark btn_radius">무통장입금</button>
				 <button type="button" class="btn btn-dark btn_radius">카카오페이</button>
				</div>
				<p class="font_sizing font-weight-bold">※휴대폰 소액결제로 주문하시는 경우, 부분 반품 진행이 불가합니다.</p>
				<p class="font_sizing">주문한 상품은 영업일 3일 (공휴일/주말 제외) 이내에 받아보실수 있습니다.</p>
				<p class="font_sizing">상품준비에 에러사항이 있거나, 발송지연이 불가피할 경우 고객께 안내연락을 드립니다.</p>
				<div class="form-check">
			  	 <input class="form-check-input" type="checkbox" value="" id="final_check">
			  	 <label class="form-check-label font_sizing" for="final_check">
			    	위 주문의 상품, 가격, 할인, 배송정보에 동의합니다.
				 </label>
				</div>
				<button type="button" class="my-4 btn btn-dark btn-lg btn-block">45,950원 결제하기</button>
			  </div>
			</div>
			
			
			
			
			
         </div>
         
         <div class="col-lg-4 ">
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
				<table class="font_sizing text-center">
				  <tbody>
				    <tr>
				      <td rowspan="5"><img class="pr-3" style="height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/product_test_img/rockman_11.jpg"></td>
				      <td class="font-weight-bold" colspan="2">Rockman 11</td>
				    </tr>
				    <tr>
				      <td class="text-left">Platform</td>
				      <td>PlayStation4</td>
				    </tr>
				    <tr>
				      <td class="text-left">Option</td>
				      <td>[상세 보기]</td>
				    </tr>
				    <tr>
				      <td class="text-left">Quantity</td>
				      <td>1</td>
				    </tr>
				    <tr>
				      <td class="font-weight-bold" colspan="2">45,950 원</td>
				    </tr>
				  </tbody>
				</table>
				<table class="mt-4" style="width: 100%">
					<tbody>
						<tr>
							<td>상품금액</td>
							<td class="text-right">45,950 원</td>
						</tr>
						<tr>
							<td>배송비</td>
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

