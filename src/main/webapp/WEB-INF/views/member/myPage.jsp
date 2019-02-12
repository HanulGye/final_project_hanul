<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<%@include file="/WEB-INF/views/temp/header.jsp"%>

    
    <div id="margin-top-container">
      	<div class="row">
      	 <div class="col-lg-2">
		  <h2 class="my-4 left_menu_style">My Page</h2>	
		  <ul class="list-group list-group-flush">
		  	<li class="list-group-item list-group-item-action">
		  		<a class="font-weight-bold"><i class="fa fa-user-circle mr-2" aria-hidden="true" style="color: grey;"></i>${login_info.name}</a>
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
     
    <%@include file="/WEB-INF/views/temp/footer.jsp"%>
	<%@include file="/WEB-INF/views/temp/loginBox.jsp"%>
    
    
   


	

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

