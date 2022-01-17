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
		},
		error: function(){},
		
	})
	activeFunc();
	
}

function activeFunc(){
	console.log("실행");
	
}