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
	  <h1 class="text-center display-4 mb-5">BoardName</h1>
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
			<table class="table table-hover ml-5 table_sizing">
				<colgroup>
					<col style="width:70%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
				</colgroup>
				
				<thead class="thead">
					<tr>
						<th class="text-center" scope="col">TITLE</th>
						<th class="text-center" scope="col">WRITER</th>
						<th class="text-center" scope="col">DATE</th>
						<th class="text-center" scope="col">HIT</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" begin="1" end="10" step="1">
					<tr>
						<td class="pl-4">test title</td>
						<td class="text-center">tester</td>
						<td class="text-center">19-01-11</td>
						<td class="text-center">0</td>
					</tr>
					</c:forEach>	
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

