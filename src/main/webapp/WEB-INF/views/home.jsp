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

    <title>GameMall MainPage</title>

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
	<script type="text/javascript">
		var msg = '${param.msg}';
		if(msg != ''){
			alert(msg);
		}
	</script>

  </head>

  <body id="page-top">
	<%@include file="/WEB-INF/views/temp/header.jsp"%>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	  </ol>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img class="d-block w-80" src="${pageContext.request.contextPath}/resources/img/slide_img/battleField_main.jpg" alt="First slide">
	      <div class="carousel-caption d-none d-md-block">
    		<h2 style="font-size:100px; text-shadow: 0 0 2px gray;">BATTLE FIELD V</h2>
   	 		<h4 style="margin-bottom: 300px; text-shadow: 0 0 2px black;">정통 FPS의 최신작 지금 만나보세요.</h4>
   	 		
   	 		
  		 </div>
	    </div>
	    <div class="carousel-item">
	      <img class="d-block w-80" src="${pageContext.request.contextPath}/resources/img/slide_img/fifa_main.jpg" alt="Second slide">
	      <div class="carousel-caption d-none d-md-block">
    		<h2 style="font-size:100px; text-shadow: 0 0 2px gray;">FIFA 19</h2>
    		<h4 style="text-shadow: 0 0 2px black;">최신 로스터 업데이트!</h4>
   	 		<h4 style="margin-bottom: 300px; text-shadow: 0 0 2px black;">EA SPORTS의 최신작</h4>
  		  </div>
	    </div>
	    <div class="carousel-item">
	      <img class="d-block w-80" src="${pageContext.request.contextPath}/resources/img/slide_img/sekiro_main.jpg" alt="Third slide">
	      <div class="carousel-caption d-none d-md-block">
    		<h2 style="font-size:100px; text-shadow: 0 0 2px gray;">SEKIRO</h2>
   	 		<h4 style="margin-bottom: 300px; text-shadow: 0 0 2px black;">인왕을 잇는 소울류 신작!</h4>
  		  </div>
	    </div>
	  </div>
	  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>

    <section class="bg-dark" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">예약 상품 보기</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">화제의 최신 타이틀을 누구보다 빨리 만나볼 수 있는 절호의 기회!</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">구매하러 가기</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">인기 기종별 상품 한 눈에 보기!</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <img src="${pageContext.request.contextPath}/resources/img/icon_img/ps_icon.png" style="width: 95px; height: 95px;">
              <h3 class="mt-3">Play Station 4</h3>
              <p class="text-muted mb-0">View into PS4</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <img src="${pageContext.request.contextPath}/resources/img/icon_img/nintendo_icon.png" style="width: 90px; height: 90px;">
              <h3 class="mt-4">Switch</h3>
              <p class="text-muted mb-0">View into Switch</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <img src="${pageContext.request.contextPath}/resources/img/icon_img/xbox_icon.png" style="width: 90px; height: 90px;">
              <h3 class="mt-4">Xbox One</h3>
              <p class="text-muted mb-0">View into Xbox One</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-gamepad fa-6x" aria-hidden="true"></i>
              <h3 class="mt-4">ETC</h3>
              <p class="text-muted mb-0">View into HardWare, Controller And Etc</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="./test">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/action_thumbnail.png" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    <h3>ACTION</h3>
                  </div>
                  <div class="project-name">
                    	타이틀 더 보기
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/2.jpg">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/sports_thumbnail.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    <h3>SPORTS</h3>
                  </div>
                  <div class="project-name">
                    	타이틀 더 보기
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/3.jpg">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/rpg_thumbnail.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    <h3>RPG</h3>
                  </div>
                  <div class="project-name">
                    타이틀 더 보기
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/4.jpg">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/casual_thumbnail.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    <h3>Casual & Character</h3>
                  </div>
                  <div class="project-name">
                    타이틀 더 보기
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="#">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/versus_thumbnail.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    <h3>Fighting</h3>
                  </div>
                  <div class="project-name">
                    타이틀 더 보기
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/6.jpg">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/etc_thumbnail.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    <h3>ETC</h3>
                  </div>
                  <div class="project-name">
                    타이틀 더 보기
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    <section class="bg-dark text-white">
      <div class="container text-center">
        <h2 class="mb-4">공략보러 가자</h2>
        <a class="btn btn-light btn-xl sr-button" href="#">Go to Community</a>
      </div>
    </section>

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

