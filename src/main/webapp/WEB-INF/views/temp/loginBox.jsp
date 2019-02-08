<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="URL" value="${pageContext.request.requestURL}" />
<c:set var="URI" value="${pageContext.request.requestURI}" />


  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <img class="img_size my-4" alt="" src="${pageContext.request.contextPath}/resources/img/icon_img/test_logo.png">
 		<h1 class="display-4 my-4 text-center">L.O.G.I.N</h1>
 		<form action="${pageContext.request.contextPath}/member/login" method="post" class="login_form_style mx_5 my_5">
 		<div class="form-group text_box_sizing">
		    <input type="email" class="form-control" placeholder="E-mail 주소 입력" name="id_member">
		</div>
		<div class="form-group text_box_sizing">
			<input type="password" class="form-control" placeholder="비밀번호 입력" name="pw">
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
		<input type="hidden" value="${URI}" name="uri">
		<div class="ml_25p">
			<button type="submit" class="btn btn-dark btn_lg btn_sizing mt-4 mb-4">Login</button>
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