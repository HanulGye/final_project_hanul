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
					<h2 class="page-header">상품 등록</h2>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
			<form class="col-lg-8" action="./regist" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="formGroupExampleInput">상품명</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="상품명을 입력하세요." name="name">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput2">가격설정</label> <input
						type="number" class="form-control" id="formGroupExampleInput2"
						placeholder="원을 제외한 숫자만을 입력하세요." name="price">
				</div>
				<div class="form-group">
					<label for="mainImg1">대표 이미지 설정</label> <input
						type="file" class="form-control" id="mainImg1"
						placeholder="상품 리스트 페이지에 노출되는 이미지 영역입니다." name="mainImg">
				</div>
				<div class="form-group">
					<label for="subImg1">설명 이미지 설정</label> <input
						type="file" class="form-control" id="subImg1"
						placeholder="개별 상품 페이지에 노출되는 이미지 영역입니다." name="subImg">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput5">기종</label> 
					<select id="formGroupExampleInput5" class="form-control" name="platform">
        				<option selected>하단의 기종을 선택해주세요.</option>
        				<optgroup label="PlayStation">
        					<option value="[PS4]">[PS4]</option>
        					<option value="[PS VR]">[PS VR]</option>
        					<option value="[PS3]">[PS3]</option>
        					<option value="[PS Vita]">[PS Vita]</option>
        				</optgroup>
        				<optgroup label="Nintendo">
        					<option value="[Switch]">[Switch]</option>
        					<option value="[3DS]">[3DS]</option>
        				</optgroup>
        				<optgroup label="XBox">
        					<option value="[XBox One]">[XBox One]</option>
        					<option value="[Xbox 360]">[Xbox 360]</option>
        				</optgroup>
        				<optgroup label="ETC">
	        				<option value="[Hardware]">[Hardware]</option>
	        				<option value="[Peripheral]">[Peripheral]</option>        				
        				</optgroup>
      				</select>
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput6">제조사</label> <input
						type="text" class="form-control" id="formGroupExampleInput6"
						placeholder="제조사를 입력해주세요." name="company">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput7">출시일</label> 
					<input
						type="date" class="form-control" id="formGroupExampleInput7" name="relase_date">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput8">장르</label> 
					<select class="form-control" id="formGroupExampleInput8" name="genre">
						<option value="action">Action</option>
						<option value="sports">Sports</option>
						<option value="rpg">RPG</option>
						<option value="casualNcharacter">Casual&Character</option>
						<option value="fighting">Fighting</option>
						<option value="etc">ETC</option>
					</select>
				</div>
				<div class="form-group">
					<label for="radio_option">옵션 상품 유무</label>
					<div id="radio_option">
						<button class="btn btn-warning" type="button" id="addBtn_opt">
   	 						옵션 추가
 	 					</button>
 	 					<div id="add_opt_area">
						</div>
					</div>
				</div>
				
				
				<button type="submit" class="btn btn-success btn-lg btn-block">상품 등록!</button>
			</form>
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