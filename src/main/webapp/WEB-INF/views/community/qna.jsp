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
	  <h1 class="text-center display-4 mb-5">QnA</h1>
      <div class="row">

        <div class="col-lg-2">
          <h2 class="my-4" id="side_menu_title">Community</h2>
          <div class="list-group list-group-flush">
            <a href="#" class="list-group-item list-group-item-action side_menu_contents">Category 1</a>
            <a href="#" class="list-group-item list-group-item-action side_menu_contents">Category 2</a>
            <a href="#" class="list-group-item list-group-item-action side_menu_contents">Category 3</a>
            <a class="list-group-item list-group-item-action nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Category 4
		       </a>
		       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		         <a class="dropdown-item side_menu_contents" href="#">Playstation3</a>
		         <a class="dropdown-item side_menu_contents" href="#">Playstation2</a>
		       </div>
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-10">

          
		
		  
		
		  	
          <div class="row">
          	<div class="btn-group btn-group-sm rounded mt-3 mb-3" role="group">
          		<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns_all">전체</button>
  				<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns">회원가입/정보</button>
  				<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns">주문</button>
  				<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns">결제/배송</button>
  				<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns">교환/반품/환불</button>
  				<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns">적립금</button>
  				<button type="button" class="btn btn-outline-secondary font-weight-light qna_btns">A/S 관련문의</button>
			</div>
			<table class="table font_sizing">
				<colgroup>
					<col style="width: 20%;">
					<col style="">
				</colgroup>
				<thead>
					<tr class="text-center">
						<th>분류</th>
						<th>내용</th>
					</tr>
				</thead>
				<tbody id="qna_table">
					<tr class="qna_row">
						<td class="text-center qna_topic">회원가입/정보</td>
						<td class="qna_con_style">
							<div data-toggle="collapse" data-target="#asdf">
							<i class="fas fa-question-circle pr-3"></i>
							<a data-toggle="collapse" href="#asdf" role="button">
								hi
							</a>
							<button type="button" class="close">
  								<span aria-hidden="true"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
							</button>	
							</div>
							<div class="collapse" id="asdf">
								<div class="qna_contents">
									<p>고객 사유에 의한 환불 시 차감 후 환불 진행 되고 있습니다.</p>
									<br>
									<p>반송비 착불 반송시 : 6,000원 차감</p>
									<br>
									<p>반송비 선불 반송시 : 3,000원 차감</p>
								</div>
							</div>
  						</td>
					</tr>
					<tr class="qna_row">
						<td class="text-center qna_topic">주문</td>
						<td class="qna_con_style">
							<div data-toggle="collapse" data-target="#bbbb">
							<i class="fas fa-question-circle pr-3"></i>
							<a data-toggle="collapse" href="#bbbb" role="button">
								hi
							</a>
							<button type="button" class="close">
  								<span aria-hidden="true"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
							</button>	
							</div>
							<div class="collapse" id="bbbb">
								<div class="qna_contents">
									<p>고객 사유에 의한 환불 시 차감 후 환불 진행 되고 있습니다.</p>
									<br>
									<p>반송비 착불 반송시 : 6,000원 차감</p>
									<br>
									<p>반송비 선불 반송시 : 3,000원 차감</p>
								</div>
							</div>
  						</td>
					</tr>
					<tr class="qna_row">
						<td class="text-center qna_topic">회원가입/정보</td>
						<td class="qna_con_style">
							<div data-toggle="collapse" data-target="#cccc">
							<i class="fas fa-question-circle pr-3"></i>
							<a data-toggle="collapse" href="#cccc" role="button">
								hi
							</a>
							<button type="button" class="close">
  								<span aria-hidden="true"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
							</button>	
							</div>
							<div class="collapse" id="cccc">
								<div class="qna_contents">
									<p>고객 사유에 의한 환불 시 차감 후 환불 진행 되고 있습니다.</p>
									<br>
									<p>반송비 착불 반송시 : 6,000원 차감</p>
									<br>
									<p>반송비 선불 반송시 : 3,000원 차감</p>
								</div>
							</div>
  						</td>
					</tr>
				</tbody>
			</table>
            
          </div>
          <!-- /.row -->
		  <div class="mt-4">
			 <nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item active" aria-current="page">
			      <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item"><a class="page-link" href="#">Next</a></li>
			  </ul>
			 </nav>
	     </div>
		
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

  </body>

</html>

