// A $( document ).ready() block.
$( document ).ready(function() {
    
});


function joinCheck(){
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var password = document.getElementById("password");
	var pwdCheck = document.getElementById("pwdCheck");
	
	/* 정규식 */
	//이메일 정규식
	var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	//password(숫자와 문자 포함 형태의 6~30자리 이내)
	var regPwd = /^[A-Za-z0-9]{6,30}$/;

	
	if(name.value == ""){
		console.log("name-missing-alert show");
		$('#name-missing-alert').show();	
		name.focus();
		return false;
	};
	
	if(email.value == ""){
		$('#email-missing-alert').show();
		email.focus();
		return false;
	}
	
	/* regEmail Check */
	if(regEmail.test(email) == false){
		$('#invalid-email-alert').show();
		email.focus();
		return false;
	}
	
	/* Email Duplicate Check */
	if(){
		$('#email-invalid-claim-alert').show();
		email.focus();
		return false;
	}
	
	
	
	//ajax - document.joinForm.submit();
	$.ajax({
		url: "/member/join",
		method: "post",
		data: {
			name: name.value,
			email: email.value,
			password: password.value,
			pwdCheck: pwdCheck.value
		},
		async: "true",
		success: function(responseData){
			console.log("responseData", responseData);
			if(responseData=="success"){
				window.location.href = "/"
			}
			
			
			/* 여기를 긁어왔으니 수정해야 합니다 */
			if(res = 1) {
				$that.attr('state', 'true');
				$that.css('border', '1px solid green');
				$('.email-alert').css('color','green').html('사용할 수 있는 이메일입니다.').stop().fadeIn();
				$that.attr('data-state', 'true');
			}else{
				$that.attr('state', 'false');
				$that.css('border', '1px solid red');
				$('.email-alert').css('color','red').html('이미 사용중이거나 중복된 이메일 입니다.').stop().fadeIn();
			}
		}, error :  function(request,status,error){// 에러발생시 실행할 함수
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
			
			
			
/*		},
		error: function(){},
	*/	
		
	})
	activeFunc();
	
}

function activeFunc(){
	console.log("실행");
	
}

$('#temp_input').bind('blur', function(){
	var email = $(this).val(), $that = $(this);
	
	console.log('email :: '+ email);
	
	
	$.ajax({
		url : '<?=$DC[skinurl]?>/api_check_email.php',
		type : 'POST',
		data : {email : email},
		success : function(res) {
			console.log('성공: '+res);
			if(res = 1) {
				$that.attr('state', 'true');
				$that.css('border', '1px solid green');
				$('.email-alert').css('color','green').html('사용할 수 있는 이메일입니다.').stop().fadeIn();
				$that.attr('data-state', 'true');
			}else{
				$that.attr('state', 'false');
				$that.css('border', '1px solid red');
				$('.email-alert').css('color','red').html('이미 사용중이거나 중복된 이메일 입니다.').stop().fadeIn();
			}
		}, error :  function(request,status,error){// 에러발생시 실행할 함수
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
	});
});