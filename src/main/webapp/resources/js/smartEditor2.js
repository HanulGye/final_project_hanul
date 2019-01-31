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
