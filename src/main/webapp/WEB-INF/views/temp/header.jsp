<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<nav class="fixed-top">
	<nav class="navbar navbar-expand-lg bg-dark sticky">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<c:choose>
					<c:when test="${!empty login_info}">
						<li class="nav-item mr-3"><a href="${pageContext.request.contextPath}/member/logout"><i class="fas fa-sign-out-alt" aria-hidden="true" style="color: white;"> logOut</i></a></li>
						<li class="nav-item mr-3"><a href="${pageContext.request.contextPath}/member/myPage"><i class="fas fa-address-card" aria-hidden="true" style="color: white;"> MyPage</i></a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item mr-3"><a id="login_popup" href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-user-circle" aria-hidden="true" style="color: white;"> login</i></a></li>
						<li class="nav-item mr-3"><a href="${pageContext.request.contextPath}/member/join"><i class="fa fa-user-plus" aria-hidden="true" style="color: white;"> Join</i></a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item mr-3"><a href="#"><i class="fa fa-truck" aria-hidden="true" style="color: white;"> Order</i></a></li>
				<li class="nav-item" style="margin-right: 30px;"><a href="${pageContext.request.contextPath}/order/cart"><i class="fa fa-shopping-cart" aria-hidden="true" style="color: white;"> Cart</i></a></li>
			</ul>
		</div>
	</nav>
    <!-- Navigation -->	
    <nav class="navbar navbar-dark navbar-expand-lg bg-dark" id="mainNav">	
      <div class="container">  
        <a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}">Home</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
             <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          PlayStation
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=PS4">PlayStation 4</a>
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=PS VR">PlayStation VR</a>
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=PS3">PlayStation 3</a>
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=PS Vita">PlayStation Vita	</a>
		       </div>
		     </li>
            <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Nintendo
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=Switch">Nintendo Switch</a>
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=3DS">Nintendo 3DS</a>
		       </div>
		     </li>
		     <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          XBox
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=XBox One">XBox One</a>
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=XBox 360">XBox 360</a>
		       </div>
		     </li>
		     <li class="nav-item dropdown">
		       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Etc
		       </a>
		       <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=Hardware">Hardware</a>
		         <a class="dropdown-item text-light" href="${pageContext.request.contextPath}/shop/smallCategory?platform=Peripheral">Peripheral</a>
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