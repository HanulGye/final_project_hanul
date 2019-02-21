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


    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/creative.min.css" rel="stylesheet">

  </head>

  <body class="nanum_onlyFont">
	<%@include file="/WEB-INF/views/temp/header.jsp"%>
	<!-- navigation 끝 각 메뉴별 링크 걸어둘 때까진 냅두기 -->

    
    <div id="margin-top-container">

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
        
        <div class="col-lg-10">
        	<form action="" id="frm" class="pten">
	        	<div class="input-group mb-3 input-group-sm col-lg-6">
				  <div class="input-group-prepend">
				    <label class="input-group-text" for="inputGroupSelect01">게시판</label>
				  </div>
				  <select class="custom-select" id="inputGroupSelect01">
				    <option selected>종류를 선택하십시오</option>
				    <option value="1">공지사항</option>
				    <option value="2">리뷰</option>
				    <option value="3">문의</option>
				    <option value="4">오프라인 매장</option>
				    <option value="5">새 소식</option>
				  </select>
				</div>
				<div class="input-group mb-3 input-group-sm col-lg-6">
				  <div class="input-group-prepend">
				    <label class="input-group-text" for="inputGroupSelect02">하위분류</label>
				  </div>
				  <select class="custom-select" id="inputGroupSelect02">
				    <option selected>종류를 선택하십시오</option>
				    <option value="1">PlayStation 4</option>
				    <option value="2">Switch</option>
				    <option value="3">XBox One</option>
				  </select>
				</div>
				
				<div class="input-group mb-3 input-group-sm col-lg-6">
				  <div class="input-group-prepend">
				    <label class="input-group-text" for="inputGroupSelect03">상품명</label>
				  </div>
				  <select class="custom-select" id="inputGroupSelect03">
				    <option selected>종류를 선택하십시오</option>
				    <option value="1">DB의 product table에서</option>
				    <option value="2">상품명 컬럼 foreign key로 연결해서</option>
				    <option value="3">해당 옵션에다가 뿌릴 것임.</option>
				  </select>
				</div>
				
				<div class="input-group mb-3 input-group-sm col-lg-6">
				  <div class="input-group-prepend">
				    <div class="input-group-text">
				      <input type="checkbox" aria-label="Checkbox for following text input">
				    </div>
				  </div>
				  <input type="text" readonly class="form-control-plaintext form-control-sm" aria-label="Text input with checkbox" value="&nbsp; 공지사항 및 매장 공지사항에서의 '중요표시' 버튼">
				</div>
        		
        		<div class="form-group form-control-sm row mb-3">
				    <label for="writer" class="col-lg-2 col-form-label">작성자</label>
				    <div class="col-lg-4">
				      <input type="text" class="form-control form-control-sm" id="writer">
				    </div>
				</div>
				
				<div class="form-group form-control-sm row mb-3">
				    <label for="title" class="col-lg-2 col-form-label">제목</label>
				    <div class="col-lg-4">
				      <input type="text" class="form-control form-control-sm" id="title">
				    </div>
				</div>
        		
	        	<textarea rows="" cols="" id="contents"></textarea>
				<input type="submit" id="save" value="등록!" class="rounded btn btn-secondary positioning mt-4">        	
        	</form>
        
        </div>
      
      </div>
    
    </div>     
		
     
  	<%@include file="/WEB-INF/views/temp/footer.jsp"%>
  	

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/scrollreveal/scrollreveal.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/resources/js/creative.min.js"></script>

	<!-- smartEditor2 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
	
	<script type="text/javascript">
	var oEditors = [];
	$(function(){
      	nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          //textArea의 id를 elPlaceHolder에 설정
          elPlaceHolder: "contents",
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "${pageContext.request.contextPath}/resources/SE2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) ?ъ슜 ?щ? (true:?ъ슜/ false:?ъ슜?섏? ?딆쓬)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){
                   
              }
          }
      	});
      
      //저장버튼 클릭시 form 전송 (아래의 id="save" 식별자는 form tag의 submit 버튼에 해당하는 태그에 걸어줄것)
      //++ id="frm" 식별자 역시, 스마트에디터가 사용되는 form tag의 id에 넣어줄 것	
      $("#save").click(function(){
          oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
          $("#frm").submit();
      	});
      });
	</script>
	

  </body>

</html>

