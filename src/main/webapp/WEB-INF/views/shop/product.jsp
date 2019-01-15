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
        <form class="form-inline">
	    	<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	    	<button class="btn btn-dark my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
	  	</form>
      </div>
    </nav>
	</nav>
	<!-- navigation 끝 각 메뉴별 링크 걸어둘 때까진 냅두기 -->

    
    <div id="margin-top-container">

      <div class="row">

        <div class="col-lg-2">
		  <img class="mb-3 font_img_size" alt="" src="${pageContext.request.contextPath}/resources/img/icon_img/playstation-font.png">	
          <!-- <h2 class="my-4">Shop Name</h2> -->
          <div class="list-group list-group-flush">
            <a href="#" class="list-group-item list-group-item-action">Category 1</a>
            <a href="#" class="list-group-item list-group-item-action">Category 2</a>
            <a href="#" class="list-group-item list-group-item-action">Category 3</a>
            <a href="#" class="list-group-item list-group-item-action">Category 4</a>
            <a href="#" class="list-group-item list-group-item-action">Category 5</a>
            <a href="#" class="list-group-item list-group-item-action">Category 6</a>
            <a class="list-group-item nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Category 7
		       </a>
		       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item" href="#">Playstation3</a>
		         <a class="dropdown-item" href="#">Playstation2</a>
		       </div>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-7">
		
          <div class="row">
			<div class="mx-auto mb-5">
				<button type="button" class="btn btn-light rounded btn-lg"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; Prev</button>
				<button type="button" class="btn btn-light rounded btn-lg">List</button>
				<button type="button" class="btn btn-light rounded btn-lg">Next &nbsp;<i class="fa fa-arrow-right" aria-hidden="true"></i></button>
			</div>
            <div class="mx-auto">
            	<img alt="" src="${pageContext.request.contextPath}/resources/img/product_test_img/rockman11_inside.jpg">
            </div>
			<div class="mx-auto mt-5">
				<button type="button" class="btn btn-light rounded btn-lg"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; Prev</button>
				<button type="button" class="btn btn-light rounded btn-lg">List</button>
				<button type="button" class="btn btn-light rounded btn-lg">Next &nbsp;<i class="fa fa-arrow-right" aria-hidden="true"></i></button>
			</div>
          </div>
          <!-- /.row -->
		  
		
        </div>
        <!-- /.col-lg-9 -->
		
		<div class="col-lg-3">
         	<div class="card">
			  <div class="card-body card_bottom_margin text-left ml-3">
				<p class="my-4 font-weight-bold">[PS4] 록맨 11 한글 자막판</p>
				<table class="mt-4 font_sizing" style="width: 100%">
					<tbody>
						<tr>
							<td>제조사</td>
							<td class="text-right">CAPCOM</td>
						</tr>
						<tr>
							<td>출시일</td>
							<td class="text-right">2018/12/28</td>
						</tr>
						<tr>
							<td>소비자가격</td>
							<td class="text-right">54,800 원</td>
						</tr>
						<tr>
							<td>적립금</td>
							<td class="text-right">500 원</td>
						</tr>
						<tr>
							<td>판매가격</td>
							<td class="font-weight-bold text-right text-danger" style="font-size: 1.000rem;">45,000 원</td>
						</tr>
					</tbody>
				</table>
				<p class="mt-4 font_sizing">옵션</p>
      			<select class="form-control form-control-sm mb-4 font_sizing">
  					<option>[옵션 1] 옵션 1 문구 영역입니다.</option>
  					<option>[옵션 2] 옵션 2 문구 영역입니다.</option>
				</select>
				<table class="mt-3" style="width: 100%">
					<tbody>
						<tr>
							<td class="font-weight-bold">총 상품 금액</td>
							<td class="font-weight-bold text-danger text-right">45,000 원</td>
						</tr>
						<tr>
							<td class="pt-3" colspan="2">
								<button type="button" class="rounded btn btn-danger btn-block">
									<i class="fa fa-credit-card" aria-hidden="true"></i>
									&nbsp;주문하기
								</button>
							</td>						
						</tr>
						<tr>
							<td class="pt-1" colspan="2">
								<button type="button" class="rounded btn btn-secondary btn-block">
									<i class="fa fa-shopping-cart" aria-hidden="true"></i>
									&nbsp;장바구니
								</button>
							</td>						
						</tr>
					</tbody>
				</table>
			  </div>
			</div>
			
			<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">REVIEW</p>
			      </li>
			      <li class="nav-item col-lg-2">
			      	<button type="button" class="close" aria-label="Close">
  						<span aria-hidden="true"><i class="fa fa-angle-up" aria-hidden="true"></i></span>
					</button>	
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body card_bottom_margin text-left ml-3">
			
			  </div>
			</div>
			
			<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">NOTICE</p>
			      </li>
			      <li class="nav-item col-lg-2">
			      	<button type="button" class="close" aria-label="Close">
  						<span aria-hidden="true"><i class="fa fa-angle-up" aria-hidden="true"></i></span>
					</button>	
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body card_bottom_margin text-left ml-3">
			
			  </div>
			</div>
			
			<div class="card">
			  <div class="card-header text-left">
			    <ul class="nav nav-pills card-header-pills row">
			      <li class="nav-item col-lg-10">
			        <p class="my-3 bold_and_large">QnA</p>
			      </li>
			      <li class="nav-item col-lg-2">
			      		<button type="button" class="close" aria-label="Close">
  							<span aria-hidden="true"><i class="fa fa-angle-up" aria-hidden="true"></i></span>
						</button>	
			      </li>
			      
			    </ul>
			  </div>
			  <div class="card-body card_bottom_margin text-left ml-3">
				<p>collapseExample를 통한 토글링</p>
			  </div>
			</div>
			
		</div>
		
			
      </div>
      <!-- /.row -->

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

