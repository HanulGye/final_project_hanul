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
	<!-- navigation 끝 각 메뉴별 링크 걸어둘 때까진 냅두기 -->

    
    <div id="margin-top-container">
      	<h1 class="text-center display-4 mb-5">Cart</h1>
      	<div class="row">
         <div class="col-lg-7">
         <!-- 상품이 없을 경우  <div class="col-lg-10 offset-lg-1"> -->
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
			    <c:forEach items="${carts}" var="dto"> 
			    <tr class="tr-border-style">
			      <td>
			      	<table class="cart-innerTable-style">
			      		
			      		<tr>
			      			<td rowspan="5"><img class="pr-3" style="height: 30%" alt="" src="../resources/product/${dto.products.mainImg.fname}"></td>
			      		</tr>
			      		<tr>
			      			<td class="text-center font-weight-bold">${dto.products.name}</td>
			      		</tr>
			      		<tr>
			      			<td>플랫폼 : ${dto.products.platform}</td>
			      		</tr>
			      		<tr>
			      			<td class="border-none">옵션 : ${dto.product_options.name}</td>
			      			
			      		</tr>
			      		<tr>
			      			<td class="border-none">수량 : ${dto.quantity}</td>
			      		</tr>
			      		<tr>
			      			<td class="text-center font-weight-bold" colspan="2"><button type="button" class="rounded btn btn-dark btn-sm" data-toggle="modal" data-target="#${dto.id_cart_order}">옵션 & 수량변경</button></td>
			      		</tr>
			      	</table> 
			      </td>
			      <td class="pt-4 font-weight-bold">${dto.products.price} 원</td>
			      <td>
			      	<button type="button" class="close" aria-label="Close">
  						<span aria-hidden="true">&times;</span>
					</button>
				  </td>
				  <!-- 장바구니에 상품 없을 경우  -->	
			      <!-- <td><i class="fas fa-exclamation-triangle wrn"></i></td>-->
			    </tr>
			    <!-- 장바구니에 상품 없을 경우 -->
			    <!-- <tr>
			    	<td>
			    		<p class="etypgh text-center">장바구니에 상품이 없습니다.</p>
			    	</td>
			    </tr> -->
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
     
	<%@include file="/WEB-INF/views/temp/footer.jsp"%>
	<%@include file="/WEB-INF/views/temp/loginBox.jsp"%>

<c:forEach items="${carts}" var="dto">

<div class="modal fade" tabindex="-1" role="dialog" id="${dto.id_cart_order}">
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
      <div class="col-md-6"><img class="ml-4" style="width: 100%" alt="" src="../resources/product/${dto.products.mainImg.fname}"></div>
      <div class="col-md-5 offset-md-1 modal_box_style">
      	<p class="h5 font-weight-bold text-center mb-3">${dto.products.name}</p>
      	<p class="mt-4">옵션</p>
      	<select class="form-control form-control-sm mb-4">
  			<c:forEach items="${options}" var="opt">
  			<option>[옵션] ${opt.name} / ${opt.price}</option>
  			</c:forEach>
		</select>
		<p class="mt-4">수량</p>
		<div class="input-group mb-4">
		  <input type="text" readonly class="form-control-plaintext" value="${dto.quantity}" aria-label="Recipient's username with two button addons" aria-describedby="button-addon4">
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
</c:forEach>


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

