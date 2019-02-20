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

  <body class="nanum_onlyFont">
	<%@include file="/WEB-INF/views/temp/header.jsp"%>

    
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
				<p>test</p>
				<p>test</p>
				<p>test</p>
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
				<c:forEach items="${carts}" var="dto" varStatus="numbering">
				
				<table class="font_sizing text-center mt-4 cartArea" style="width: 100%">
				  <tbody>
				    <tr>
				      <td rowspan="5"><img style="height: 30%" alt="" src="../resources/product/${dto.products.mainImg.fname}"></td>
				      <td class="font-weight-bold" colspan="2">${dto.products.name}</td>
				    </tr>
				    <tr>
				      <td class="text-left">Platform</td>
				      <td>${dto.products.platform}</td>
				    </tr>
				    <tr>
				      <td class="text-left">Option</td>
				      <td><button type="button" class="btn btn-secondary rounded btn_small" data-toggle="modal" data-target="#${dto.id_cart_order}">상세보기</button></td>
				    </tr>
				    <tr>
				      <td class="text-left">Quantity</td>
				      <td>${dto.quantity}</td>
				    </tr>
				    <tr>
				      <td class="font-weight-bold" colspan="2">${dto.products.price} 원</td>
				      <input type="hidden" id="price${numbering.index}" value="${dto.products.price}">
				    </tr>
				  </tbody>
				</table>
				</c:forEach>
			
				<table class="mt-4" style="width: 100%">
					<tbody>
						<tr>
							<td>상품금액</td>
							<td class="text-right" id="view1"></td>
							<input type="hidden" id="productP">
						</tr>
						<tr>
							<td>배송비</td>
							<td class="text-right" id="view2"></td>
							<input type="hidden" id="shippingP">
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
							<td class="font-weight-bold importantRed">총 결제 예정 금액</td>
							<td class="font-weight-bold text-right importantRed" id="view3"></td>
							<input type="hidden" id="totalP">
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
  
   	<c:forEach items="${carts}" var="dto" varStatus="status">
   	<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="${dto.id_cart_order}">
  		<div class="modal-dialog modal-sm modal-dialog-centered">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalCenterTitle">Confirm Option</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      			<div class="modal-body">
       				<p class="font_sizing cOptName">[옵션명]&nbsp;${dto.product_options.name}</p>
       				<p class="font_sizing cOptPrice">[가&nbsp;&nbsp;&nbsp;&nbsp;격]&nbsp;${dto.product_options.price}</p>
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

	<!-- scriptCustooooom -->
    <script src="${pageContext.request.contextPath}/resources/js/cart.js"></script>

  </body>

</html>

