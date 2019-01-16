<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<!-- url var에 담기 -->
	<c:set var="uri" value="${pageContext.request.requestURI}" />
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
      </div>
    </nav>
	</nav>
	<!-- navigation 끝 각 메뉴별 링크 걸어둘 때까진 냅두기 -->

    
    <div id="margin-top-container">

      <div class="row">

        <div class="col-lg-2">
          <h2 class="my-4">Community</h2>
          <div class="list-group list-group-flush">
            <a href="#" class="list-group-item list-group-item-action">Category 1</a>
            <a href="#" class="list-group-item list-group-item-action">Category 2</a>
            <a href="#" class="list-group-item list-group-item-action">Category 3</a>
            <a class="list-group-item list-group-item-action nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Category 4
		       </a>
		       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item" href="#">Playstation3</a>
		         <a class="dropdown-item" href="#">Playstation2</a>
		       </div>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-10">

          
		
		  <div class="btn-group btn-group-sm btn-group-toggle my-4 col-lg-4 offset-lg-8" data-toggle="buttons">
			  <label class="btn btn-outline-dark active sorting_group">
			    <input type="radio" name="options" id="option1" autocomplete="off" checked> 제목
			  </label>
			  <label class="btn btn-outline-dark sorting_group">
			    <input type="radio" name="options" id="option2" autocomplete="off"> 작성자
			  </label>
			  <label class="btn btn-outline-dark sorting_group">
			    <input type="radio" name="options" id="option3" autocomplete="off"> 내용
			  </label>
			  <form class="form-inline" id="go_to_top">
	          	<div class="">
			    	<input class="form-control form-control-sm mr-sm-2" type="search" placeholder="검색" aria-label="Search">
			    	<button class="btn btn-dark my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>          	
	          	</div>
	  	  	  </form>
		  </div>
		
		
          <div class="row">
			<table class="table font_sizing nanum_onlyFont mb-5">
				<thead>
					<tr>
						<th colspan="2" class="text-center"><p class="mb-0 nanum">[PS4] psn 1월의 무료게임 안내!</p></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-left">
							<p class="little_margin">날짜 : <span>2019/01/16</span></p>
							<p class="little_margin">작성자 : <span>tester</span></p>
						</td>
						<td class="text-right">조회수 : <span>0</span></td>
					</tr>
					<tr>
						<td colspan="2" class="pt-5 pb-5 text-center">
						<c:choose>
							<c:when test="${uri eq '/gameMall/WEB-INF/views//community/article.jsp'}">
								<img alt="" src="${pageContext.request.contextPath}/resources/img/test_img/review_sample.png">
							</c:when>
							<c:otherwise>
								<img alt="" src="${pageContext.request.contextPath}/resources/img/test_img/article_test_img1.jpg">
							</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="text-right font-weight-bold">목록보기</td>
					</tr>
				</tbody>
			</table>
            
          </div>
          <!-- /.row -->
		  
		  <!-- disqus는 article.jsp 페이지로 갈 때 어떤 table을 거쳤는가에 따라 jstl if문 사용하여 없애고 지우고 할거임. -->
		  <c:if test="${uri eq '/gameMall/WEB-INF/views//community/article.jsp'}">
			  <div id="disqus_thread"></div>
		  </c:if>
			<script>
			
			/**
			*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
			*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
			/*
			var disqus_config = function () {
			this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
			this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
			};
			*/
			(function() { // DON'T EDIT BELOW THIS LINE
			var d = document, s = d.createElement('script');
			s.src = 'https://hanulgye.disqus.com/embed.js';
			s.setAttribute('data-timestamp', +new Date());
			(d.head || d.body).appendChild(s);
			})();
			</script>
			<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                            
		
		
		
		
        </div>
        <!-- /.col-lg-9 -->

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

	<!-- disqus count -->
	<script id="dsq-count-scr" src="//hanulgye.disqus.com/count.js" async></script>
  </body>

</html>

