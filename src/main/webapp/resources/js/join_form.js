

$(function check() {
	
	
	
	$(function() {
		var regExpId = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		$('#input_id').blur(function() {
			var idVal = $('#input_id').val();
			var message = '해당 Id는 사용 가능합니다.';
			if(idVal.match(regExpId) != null){
				$('#idText').removeClass('text-danger');
				$('#idText').addClass('text-success');
				$('#idText').text(message);
				$('#idText').attr('style','display:block');
				return true;
			}else{
				message = 'Id는 이메일 형식으로 입력해주십시오.';
				$('#idText').removeClass('text-success');
				$('#idText').addClass('text-danger');
				$('#idText').text(message);
				$('#idText').attr('style','display:block');
				return false;
			}
		});
		
	})
	
	$(function() {
		var regExpPw = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,16}$/;
		$('#input_pw').blur(function() {
			var pwVal = $('#input_pw').val();
			var message = '해당 비밀번호는 사용 가능합니다.';
			if(pwVal.match(regExpPw) != null){
				$('#pwText').removeClass('text-danger');
				$('#pwText').addClass('text-success');
				$('#pwText').text(message);
				$('#pwText').attr('style','display:block');
				return true;
			}else{
				message = '비밀번호 조건(8~16자, 영문, 특수문자 포함)이 맞지 않습니다.';
				$('#pwText').removeClass('text-success');
				$('#pwText').addClass('text-danger');
				$('#pwText').text(message);
				$('#pwText').attr('style','display:block');
				return false;
			}
		});
	})
	
	$(function() {
		$('#check_pw').blur(function() {
			var pwVal = $('#input_pw').val();
			var pwChkVal = $(this).val();
			var message = '비밀번호 일치';
			
			if(pwChkVal == pwVal){
				$('#pwCheck').removeClass('text-danger');
				$('#pwCheck').addClass('text-success');
				$('#pwCheck').text(message);
				$('#pwCheck').attr('style','display:block');
				return true;
			}else{
				message = '비밀번호가 일치하지 않습니다.';
				$('#pwCheck').removeClass('text-success');
				$('#pwCheck').addClass('text-danger');
				$('#pwCheck').text(message);
				$('#pwCheck').attr('style','display:block');
				return false;
			}
		})
	})
	
	$(function() {
		var regExpName = /[a-zA-Z]|[가-힣]/g;
		$('#input_name').blur(function() {
			var naVal = $('#input_name').val();
			var message = '이름을 입력해주세요.';
			if(naVal.match(regExpName) != null){
				$('#nameText').attr('style','display:none');
				return true;
			}else{
				$('#nameText').addClass('text-danger');
				$('#nameText').text(message);
				$('#nameText').attr('style','display:block');
				return false;
			}
		})
	})
	
	$(function() {
		var regExpPhn = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		$('#input_phone').blur(function() {
			var phnVal = $(this).val();
			var message = '휴대전화 번호를 입력해주세요(eg. 010-0000-0000)';
			if(phnVal.match(regExpPhn) != null){
				$('#phnText').attr('style','display:none');
				return true;
			}else{
				$('#phnText').addClass('text-danger');
				$('#phnText').text(message);
				$('#phnText').attr('style','display:block'); 
				return false;
			}
		})
	
		
	})

})



