<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Gamemall Admin Page</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap_admin/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
	
	
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div id="wrapper">
		<%@include file="/WEB-INF/views/admin/common/navigation.jsp"%>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="page-header">재고 리스트</h2>
				</div>
				<!-- /.col-lg-12 -->
				<div class="col-lg-8">
					<table class="table text-center table-hover">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 70%">
							<col style="width: 20%">
						</colgroup>
						<thead>
					    	<tr>
					      		<th class="text-center">기종명</th>
					      		<th class="text-center">상품명</th>
					      		<th class="text-center">상세보기</th>
					    	</tr>
					  	</thead>
					  	<tbody>
					  		<c:forEach items="${productList}" var="dto">
						  		<tr>
						  			<td>${dto.platform}</td>
						  			<td>${dto.name}</td>
						  			<td><a class="a_non_style" href="#"><button type="button" class="btn btn-secondary">상세 보기</button></a></td>
						  		</tr>
					  		</c:forEach>
					  	</tbody>
					</table>
				</div>
			</div>


		</div>
		
	</div>
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery_admin/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap_admin/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/raphael/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/sb-admin-2.js"></script>

</body>
</html>