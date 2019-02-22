<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GameMall</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type='text/css'>

    <!-- Plugin CSS -->

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/creative.min.css" rel="stylesheet">

  </head>

  <body class ="nanum_onlyFont" id="page-top">
	<%@include file="/WEB-INF/views/temp/header.jsp"%>

    
    <div id="margin-top-container">

      <div class="row">

		<!-- platform을 etc로 넣고 하위에 hardware나 peripheral 넣어야 할듯 -->
        <div class="col-lg-2 font-weight-bold">
		  	<c:choose>
		  		<c:when test="${param.platform eq 'Hardware' || param.platform eq 'Peripheral'}">
		  			<h2 class="menu_font">E.T.C</h2>
		  			<div class="list-group list-group-flush">
			            <a href="#" class="list-group-item list-group-item-action">Hardware</a>
			            <a href="#" class="list-group-item list-group-item-action">Peripheral</a>
			          </div>
		  		</c:when>
		  		<c:when test="${param.genre ne null && param.platform eq 'all'}">
		  			<h2 class="menu_font">All Platform</h2>
		  			<div class="list-group list-group-flush">
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/all?genre=action&platform=all" class="list-group-item list-group-item-action">Action</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/all?genre=sports&platform=all" class="list-group-item list-group-item-action">Sports</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/all?genre=rpg&platform=all" class="list-group-item list-group-item-action">RPG</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/all?genre=casualNcharacter&platform=all" class="list-group-item list-group-item-action">Casual & Character</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/all?genre=fighting&platform=all" class="list-group-item list-group-item-action">Fighting</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/all?genre=etc&platform=all" class="list-group-item list-group-item-action">ETC</a>
			        </div>
		  		</c:when>
		  		<c:otherwise>
			  		<img class="mb-3 font_img_size" alt="" src="
					  <c:choose>
					  	<c:when test="${fn:contains(param.platform, 'PS')}">
					  		${pageContext.request.contextPath}/resources/img/icon_img/playstation-font.png
					  	</c:when>
					  	<c:when test="${fn:contains(param.platform, 'XB')}">
					  		${pageContext.request.contextPath}/resources/img/icon_img/xbox_font.png
					  	</c:when>
					  	<c:otherwise>
					  		${pageContext.request.contextPath}/resources/img/icon_img/nintendo_font.png		  		
					  	</c:otherwise>
					  </c:choose>">	
			          <div class="list-group list-group-flush">
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/genre?platform=${param.platform}&genre=action" class="list-group-item list-group-item-action">Action</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/genre?platform=${param.platform}&genre=sports" class="list-group-item list-group-item-action">Sports</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/genre?platform=${param.platform}&genre=rpg" class="list-group-item list-group-item-action">RPG</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/genre?platform=${param.platform}&genre=casualNcharacter" class="list-group-item list-group-item-action">Casual & Character</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/genre?platform=${param.platform}&genre=fighting" class="list-group-item list-group-item-action">Fighting</a>
			            <a href="${pageContext.request.contextPath}/shop/smallCategory/genre?platform=${param.platform}&genre=etc" class="list-group-item list-group-item-action">ETC</a>
			          </div>
		  		</c:otherwise>
		  	</c:choose>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-10">

          <!-- <form class="form-inline" id="go_to_top">
          	<div class="mx-auto mb-4">
		    	<input class="form-control form-control-lg mr-sm-2" type="search" placeholder="검색" aria-label="Search">
		    	<button class="btn btn-dark my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>          	
          	</div>
	  	  </form> -->
	  	  
	  	  <h1 class="text-center display-4 mb-5">Product</h1>
		
		  <div class="btn-group btn-group-sm btn-group-toggle my-4 col-lg-4 offset-lg-8" data-toggle="buttons">
			  <label class="btn btn-outline-dark active sorting_group">
			    <input type="radio" name="options" id="option1" autocomplete="off" checked> 최신순
			  </label>
			  <label class="btn btn-outline-dark sorting_group">
			    <input type="radio" name="options" id="option2" autocomplete="off"> 평가순
			  </label>
			  <label class="btn btn-outline-dark sorting_group">
			    <input type="radio" name="options" id="option3" autocomplete="off"> 판매순
			  </label>
			  <label class="btn btn-outline-dark sorting_group">
			    <input type="radio" name="options" id="option2" autocomplete="off"> 높은가격순
			  </label>
			  <label class="btn btn-outline-dark sorting_group">
			    <input type="radio" name="options" id="option3" autocomplete="off"> 낮은가격순
			  </label>
		  </div>
		
		
          <div class="row">
			<c:forEach items="${products}" var="dto">
            <div class="col-lg-2 col-md-6 mb-4">
              <div class="card h-100">
              	<c:choose>
              		<c:when test="${param.genre ne null && param.platform eq 'all'}">
		                <a href="${pageContext.request.contextPath}/shop/product?id_product=${dto.id_product}&platform=all">
		                	<img class="card-img-top" src="${pageContext.request.contextPath}/resources/product/${dto.mainImg.fname}" alt="" style="height: 264px;">
			            </a>
              		</c:when>
              		<c:otherwise>
              			<a href="${pageContext.request.contextPath}/shop/product?id_product=${dto.id_product}">
		                	<img class="card-img-top" src="${pageContext.request.contextPath}/resources/product/${dto.mainImg.fname}" alt="" style="height: 264px;">
			            </a>
              		</c:otherwise>
              	</c:choose>
                <span class="back_new"></span>
                <div class="card-body">
                  <h4 class="card-title text-center">
                  	<c:choose>
                  		<c:when test="${param.genre ne null && param.platform eq 'all'}">
                  			<a class="titleSize font-weight-bold" href="${pageContext.request.contextPath}/shop/product?id_product=${dto.id_product}&platform=all">${dto.name}</a>
                  		</c:when>
                  		<c:otherwise>
		                    <a class="titleSize font-weight-bold" href="${pageContext.request.contextPath}/shop/product?id_product=${dto.id_product}">${dto.name}</a>
                  		</c:otherwise>
                  	</c:choose>
                  </h4>
                  <p class="titleSize font-weight-bold"><i class="fas fa-won-sign"></i>&nbsp;${dto.price}</p>
                  <div>
	                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
					  <span class="font-weight-light ml-4">
					  	<c:if test="${dto.test ne null}">
					  	${dto.test}
					  	</c:if>
					  </span>
					  <c:if test="${dto.price >= 50000}">
					  <span><img alt="" src="${pageContext.request.contextPath}/resources/img/icon_img/freeShipping.png"></span>                  
					  </c:if>
                  </div>
                </div>
              </div>
            </div>
			</c:forEach>
            </div>
          <!-- /.row -->
		  
		
        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
     
	<%@include file="/WEB-INF/views/temp/footer.jsp"%>
	<%@include file="/WEB-INF/views/temp/loginBox.jsp"%>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/scrollreveal/scrollreveal.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/resources/js/creative.min.js"></script>

  </body>

</html>

