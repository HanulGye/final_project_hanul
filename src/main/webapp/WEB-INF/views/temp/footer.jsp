<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

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
          	<c:choose>
          		<c:when test="${!empty login_info}">
          			<a href="${pageContext.request.contextPath}/member/logout">
          			<i class="fas fa-sign-out-alt fa-3x mb-3 sr-contact-1"></i>
          			<p>LogOut</p>
          			</a>
          		</c:when>
          		<c:otherwise>
		        	<a id="login_popup2" href="#" data-toggle="modal" data-target="#exampleModalCenter">
		        	<i class="fa fa-user-circle fa-3x mb-3 sr-contact-1"></i>
		        	<p>LogIn</p>
		        	</a>          		
          		</c:otherwise>
          	</c:choose>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
            <p>123-456-6789</p>
          </div>
        </div>
        <div class="row">
         <div class="col-lg-4 ml-auto text-center">
         	<c:choose>
         		<c:when test="${!empty login_info}">
         			<a href="${pageContext.request.contextPath}/member/myPage">
         			<i class="fas fa-address-card fa-3x mb-3 sr-contact-1"></i>
         			<p>MyPage</p>
         			</a>
         		</c:when>
         		<c:otherwise>
		        	<a href="${pageContext.request.contextPath}/member/join">
		        	<i class="fa fa-user-plus fa-3x mb-3 sr-contact-1"></i>
		        	<p>Join</p>
		        	</a>
         		</c:otherwise>
         	</c:choose>
         </div>
         <div class="col-lg-4 mr-auto text-center">
            <a href="mailto:your-email@your-domain.com">
            <i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
            <p>adminster@test.com</p>
            </a>
          </div>
        </div>
        <div class="row">
         <div class="col-lg-4 ml-auto text-center">
         	<a href="${pageContext.request.contextPath}/shop/market">
         	<i class="fa fa-map-marker fa-3x mb-3"></i>
        	<p>매장 안내</p>
         	</a>
         </div>
         <div class="col-lg-4 mr-auto text-center">
         	<i></i>
        	<p></p>
         </div>
        </div>
      </div>
    </section>