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

  <body class="nanum_onlyFont">
	<%@include file="/WEB-INF/views/temp/header.jsp"%>

    
    <div id="margin-top-container">
		<h1 class="text-center display-4 mb-5">Join Us</h1>
      	<form action="./join" method="post" class="pt-5 join_form_style" id="frm">
		  <div class="form-group">
		    <input type="email" class="form-control" placeholder="사용하실 ID를 입력해주세요.(수신가능 E-mail)" id="input_id" name="id_member">
		    <p class="cautionText" id="idText"></p>
		  </div>
		  <div class="form-group">
		    <input type="password" class="form-control" placeholder="영문+숫자+특수문자 8~16자리(특수문자 괄호()는 사용 불가)" id="input_pw" name="pw">
		    <p class="cautionText" id="pwText"></p>
		  </div>
		  <div class="form-group">
		    <input type="password" class="form-control" placeholder="비밀번호를 다시 입력해주세요." id="check_pw">
		    <p class="cautionText" id="pwCheck"></p>
		  </div>
		  <div class="form-group">
		    <input type="text" class="form-control" placeholder="이름을 입력해주세요." id="input_name" name="name">
		    <p class="cautionText" id="nameText"></p>
		  </div>
		  <div class="form-group">
		    <input type="tel" class="form-control" placeholder="휴대전화 번호를 입력해주세요.(eg. 010-0000-0000)" id="input_phone" name="phone">
		    <p class="cautionText" id="phnText"></p>
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
  				<input class="form-check-input" type="checkbox" value="no" id="defaultCheck3" name="mailing">
  				<input type="hidden" id="c_1" name="">
  				<label class="form-check-label" for="defaultCheck3">
    				(선택) 쇼핑정보 E-mail 수신 동의
				</label>
		  </div>
		  <div class="form-check">
  				<input class="form-check-input" type="checkbox" value="no" id="defaultCheck4" name="sms">
  				<input type="hidden" id="c_2" name="">
  				<label class="form-check-label" for="defaultCheck4">
    				(선택) 쇼핑정보 SMS 수신 동의
				</label>
				<br>
				<br>
				<p class="font-weight-bold">※ 선택항목의 경우 동의하지 않아도 불이익을 받지 않습니다.</p>
		  </div>
		  <input type="submit" class="my-5 btn btn-dark btn-lg btn-block" value="회원가입 하기">
		</form>
      
      
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
    
    <script src="${pageContext.request.contextPath}/resources/js/join_form.js"></script>

  </body>

</html>

