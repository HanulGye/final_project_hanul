<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap_admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="./home">GameMall Administer Page</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fas fa-sign-out-alt"></i> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="./home"><i class="fas fa-home"></i> Main</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> 페이지 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">메인 페이지 디자인 변경</a>
                                </li>
                                <li>
                                    <a href="login.html">공지사항 팝업 설정</a>
                                </li>
                                <li>
                                    <a href="login.html">FAQ (위치 생각해볼 것)</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fas fa-truck fa-fw"></i> 주문 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                         <li>
                            <a href="#"><i class="fas fa-cubes fa-fw"></i> 상품 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="">상품 등록</a>
                                </li>
                                <li>
                                    <a href="">재고 리스트</a>
                                </li>
                                <li>
                                    <a href="">상품 삭제</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        
                        <li>
                            <a href="#"><i class="fas fa-chart-bar fa-fw"></i> 총계 정보<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">매출액 열람</a>
                                </li>
                                <li>
                                    <a href="login.html">사이트 내 이용빈도</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                         <li>
                            <a href="#"><i class="fas fa-users-cog fa-fw"></i> 회원 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">회원 리스트</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                         <li>
                            <a href="#"><i class="fas fa-columns fa-fw"></i> 게시판 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="">글 등록</a>
                                </li>
                                <li>
                                    <a href="">게시글 관리<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="">공지사항</a>
                                        </li>
                                        <li>
                                            <a href="">리뷰</a>
                                        </li>
                                        <li>
                                            <a href="">1:1 문의</a>
                                        </li>
                                        <li>
                                            <a href="">매장 게시판</a>
                                        </li>
                                        <li>
                                            <a href="">새 소식</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">종합</h2>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <i class="fas fa-shopping-cart"></i> 주문
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                         <div class="row">
                         	<span class="col-lg-10 m_five">&nbsp;</span>	
		                 	<span class="col-lg-1 badge badge-dark">단위 : 건</span>
                         </div>
                         <table class="table text-center">
                         	<thead>
                         		<tr>
                         			<th>미출고</th>
                         			<th>출고 가능</th>
                         			<th>미입금</th>
                         		</tr>
                         	</thead>
                         	<tbody>
                         		<tr>
                         			<td>0 건</td>
                         			<td>0 건</td>
                         			<td>0 건</td>
                         		</tr>
                         	</tbody>
                         </table>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> 매출 현황
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    
                    
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <i class="far fa-question-circle"></i> 신규 문의
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                         <div class="row m_onedotf">
                         	<span class="col-lg-10 m_five">&nbsp;</span>	
		                 	<span class="col-lg-1 badge badge-dark">단위 : 건</span>
                         </div>
                         <table class="table text-center">
                         	<tr>
                         		<th>회원가입/정보</th>
                         		<td>0 건</td>
                         	</tr>
                         	<tr>
                         		<th>주문관련</th>
                         		<td>0 건</td>
                         	</tr>
                         	<tr>
                         		<th>결제/배송</th>
                         		<td>0 건</td>
                         	</tr>
                         	<tr>
                         		<th>교환/반품/환불</th>
                         		<td>0 건</td>
                         	</tr>
                         	<tr>
                         		<th>적립금</th>
                         		<td>0 건</td>
                         	</tr>
                         	<tr>
                         		<th>A/S 관련문의</th>
                         		<td>0 건</td>
                         	</tr>
                         </table>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                    
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <i class="fas fa-cubes"></i> 상품
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                         <div class="list-group">
                                <a href="#" class="list-group-item p_threeone">
                                    <i class="far fa-calendar-check"></i> 입고예정일 임박 상품
                                    <span class="pull-right text-muted small"><em>상품명</em><em>&nbsp;외&nbsp;</em><em>&nbsp;0 건</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item p_threeone">
                                    <i class="fas fa-ban"></i> 재고부족 상품
                                    <span class="pull-right text-muted small"><em>상품명</em><em>&nbsp;외&nbsp;</em><em>&nbsp;0 건</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item p_threeone">
                                    <i class="fas fa-plus"></i> 총 등록 상품
                                    <span class="pull-right text-muted small"><em>0 건</em>
                                    </span>
                                </a>
                            </div>
                         
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                                        
                    
                    
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery_admin/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap_admin/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/raphael/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/sb-admin-2.js"></script>

</body>

</html>
