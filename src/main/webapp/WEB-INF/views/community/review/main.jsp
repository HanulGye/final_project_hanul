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

    <title>GameMall</title>

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
	<!-- navigation 끝 각 메뉴별 링크 걸어둘 때까진 냅두기 -->

    
    <div id="margin-top-container" class="nanum_onlyFont text-dark">

      <div class="row">

        <div class="col-lg-2">
          <h2 class="my-4">Community</h2>
          <div class="list-group list-group-flush">
            <a href="#" class="list-group-item list-group-item-action">Notice</a>
            <div>
            <a class="list-group-item list-group-item-action nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Review
		       </a>
		       <div class="dropdown-menu menu_dd_style" aria-labelledby="navbarDropdown1">
		         <a class="dropdown-item" href="#">PlayStation4</a>
		         <a class="dropdown-item" href="#">Switch</a>
		         <a class="dropdown-item" href="#">XBox One</a>
		       </div>
            </div>
            
            <div>
		    <a class="list-group-item list-group-item-action nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          QnA
		       </a>
		       <div class="dropdown-menu menu_dd_style" aria-labelledby="navbarDropdown2">
		         <a class="dropdown-item" href="#">FAQ</a>
		         <a class="dropdown-item" href="#">1:1 QnA</a>
		       </div>
            </div>
		    
		    <div>
		    <a class="list-group-item list-group-item-action nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Off-line Market
		       </a>
		       <div class="dropdown-menu menu_dd_style" aria-labelledby="navbarDropdown3">
		         <a class="dropdown-item" href="#">Market1</a>
		         <a class="dropdown-item" href="#">Market2</a>
		         <a class="dropdown-item" href="#">Market3</a>
		       </div>
		    </div>
		    
		    <a href="#" class="list-group-item list-group-item-action">What's NEW</a>
		          
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-10">

          <form class="form-inline mb-4" id="go_to_top">
          	<div class="mx-auto mb-4">
		    	<input class="form-control form-control-lg mr-sm-2" type="search" placeholder="공략 타이틀 검색" aria-label="Search">
		    	<button class="btn btn-dark my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>          	
          	</div>
	  	  </form>
		
          <div class="row">
			<div class="col-lg-2 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/product_test_img/0090020006352.jpg" alt="" style="height: 264px;"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a class="titleSize font-weight-bold" href="${pageContext.request.contextPath}/community/review/article">드래곤 퀘스트  XI</a>
                  </h4>
                  <a href="{{ site.url }}{{ page.url }}#disqus_thread"  data-disqus-identifier="{{ page.id }}"><i class="far fa-comments">0</i></a>
                </div>
              </div>
            </div>			
            
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
    <script src="${pageContext.request.contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/resources/js/creative.min.js"></script>
	<!-- disqus count -->
	<script id="dsq-count-scr" src="//hanulgye.disqus.com/count.js" async></script>
  </body>

</html>

