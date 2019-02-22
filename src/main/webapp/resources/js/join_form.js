

$(function() {
	
	var id_chk = 0;
	var result = 0;
	var result2 = 0;
	var result3 = 0;
	var result4 = 0;
	var result5 = 0;
	var message2 = '';
	var regExpId = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	//아이디 중복 Ajax 방식 함수
	$(function() {
		$('#id_chk_btn').click(function() {
			var id_member = $(input_id).val();
			$.ajax({
				async : true,
				type : 'POST',
				data : id_member,
				url : 'join/idCheck',
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					if(id_member.match(regExpId) != null){
						if(data.result > 0){
							alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
							$('#input_id').val('');
						}else{
							alert("해당 id는 사용 가능합니다.");
							message2 = '해당 Id는 사용 가능합니다.';
							$('#idText').removeClass('text-danger');
							$('#idText').addClass('text-success');
							$('#idText').text(message2);
							$('#idText').attr('style','display:block');
							//$('#input_pw').focus();
							id_chk = 1;
						}
						
					}else{
						message2 = 'Id는 이메일 형식으로 입력해주십시오.';
						alert(message2);
						$('#idText').removeClass('text-success');
						$('#idText').addClass('text-danger');
						$('#idText').text(message2);
						$('#idText').attr('style','display:block');
						id_chk = 0;
						result = 0;
					}
				},
				error : function(error) {
					alert("입력값이 잘못되었습니다.");
					$('#input_id').focus();
				}
			});
			
		});
	});
	
	
	
	//아래의 5개의 함수는 각각 입력값에 대한 유효성 검사 역할
	//아이디 중복여부 검사 남음(2019-02-08)
	$(function() {
		$('#input_id').focus(function() {
			id_chk = 0;
		});
		$('#input_id').blur(function() {
			var idVal = $('#input_id').val();
			var message = '해당 Id는 사용 가능합니다.';
			if(idVal.match(regExpId) != null){
				if(id_chk==1){
					$('#idText').removeClass('text-danger');
					$('#idText').addClass('text-success');
					$('#idText').text(message);
					$('#idText').attr('style','display:block');
					result = 1;
					return result;
				}else{
					message = 'Id 중복검사를 실행해주십시오.'
					alert(message);
					$('#idText').removeClass('text-success');
					$('#idText').addClass('text-danger');
					$('#idText').text(message);
					$('#idText').attr('style','display:block');
					result = 1;
					id_chk = 0;
					return result;
				}
			}else{
				message = 'Id는 이메일 형식으로 입력해주십시오.';
				$('#idText').removeClass('text-success');
				$('#idText').addClass('text-danger');
				$('#idText').text(message);
				$('#idText').attr('style','display:block');
				id_chk = 0;
				result = 0;
				return result;
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
				result2 = 1;
				return result2;
			}else{
				message = '비밀번호 조건(8~16자, 영문, 특수문자 포함)이 맞지 않습니다.';
				$('#pwText').removeClass('text-success');
				$('#pwText').addClass('text-danger');
				$('#pwText').text(message);
				$('#pwText').attr('style','display:block');
				result2 = 0;
				return result2;
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
				result3 = 1;
				return result3;
			}else{
				message = '비밀번호가 일치하지 않습니다.';
				$('#pwCheck').removeClass('text-success');
				$('#pwCheck').addClass('text-danger');
				$('#pwCheck').text(message);
				$('#pwCheck').attr('style','display:block');
				result3 = 0;
				return result3;
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
				result4 = 1;
				return result4;
			}else{
				$('#nameText').addClass('text-danger');
				$('#nameText').text(message);
				$('#nameText').attr('style','display:block');
				result4 = 0;
				return result4;
				
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
				result5 = 1;
				return result5;
			}else{
				$('#phnText').addClass('text-danger');
				$('#phnText').text(message);
				$('#phnText').attr('style','display:block'); 
				result5 = 0;
				return result5;
			}
		})
	
	})
	
	

	//submit event
	$(function() {
		$('#frm').submit(function(event) {
			if(id_chk==1 && result==1 && result2==1 && result3==1 && result4==1 && result5==1 && $('#defaultCheck1').is(':checked') && $('#defaultCheck2').is(':checked')){
				//checkbox의 경우 check 되어있지 않으면 submit할 때 밸류가 넘어가지 않음.
				//이럴 때는 hidden tag 사용 
				if($('#defaultCheck3').is(':checked')){
					$('#defaultCheck3').val('yes');
				}else{
					$('#defaultCheck3').removeAttr('name');
					$('#c_1').attr('name', 'mailing');
					$('#c_1').val('no');
				}
				if($('#defaultCheck4').is(':checked')){
					$('#defaultCheck4').val('yes');
				}else{
					$('#defaultCheck4').removeAttr('name');
					$('#c_2').attr('name', 'sms');
					$('#c_2').val('no');
				}
			}else{
				alert('입력 값이 잘못되었습니다. 다시 확인해주십시오.');
				event.preventDefault();
				//조건에 만족하지 못할 경우, 실제로 form의 data들이 넘어가면 안되기 때문에, 위와 같은 .preventDefault() 사용
			}
		});
		
	})


	
})



