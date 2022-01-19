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
	
	console.log("email.value :: " + email.value); // = $("#email").val()
	
	/* name null Check */
	if(name.value == ""){
		$('#name-missing-alert').show();	
		name.focus();
		return false;
	} else {
		$('#name-missing-alert').hide();
	};
	
	/* email null Check */
	if(email.value == ""){
		$('#email-missing-alert').show();
		email.focus();
		return false;
	} else {
		$('#email-missing-alert').hide();
	};
	
	/* regEmail Check */
	if(regEmail.test(email.value) === false){
		$('#email-invalid-claim-alert').hide();
		$('#invalid-email-alert').show();
		email.focus();
		return false;
	} else {
		$('#invalid-email-alert').hide();
	};
	
	/* Email Duplicate Check */
/*	if(){
		$('#email-invalid-claim-alert').show();
		email.focus();
		return false;
	}; */
	
	/* password null Check */
	if(password.value == ""){
		$('#password-missing-alert').show();	
		password.focus();
		return false;
	} else {
		$('#password-missing-alert').hide();
	};
	
	/* regPass Check */
	if(regPwd.test(password.value) === false){
		$('#invalid-password-alert').show();
		password.focus();
		return false;
	} else {
		$('#invalid-password-alert').hide();
	};
	
	/* pwdCheck null Check */
	if(pwdCheck.value == ""){
		$('#passwordCheck-missing-alert').show();	
		pwdCheck.focus();
		return false;
	} else {
		$('#passwordCheck-missing-alert').hide();
	};
	
	/* pwdCheck == password? */
	if(pwdCheck.value !== password.value){
		$('#password-mismatch-alert').show();	
		pwdCheck.focus();
		return false;
	} else {
		$('#password-mismatch-alert').hide();
	};
	
	
	
	var joinCheckAjax = {}; //joinCheck ajax 성공 여부
	//ajax - joinCheck(); -> 한 function 안에 다른 url을 지닌 ajax 2개를 보낼수 있나??
	//joinCheck 성공하면 /member/join 컨트롤러 호출
	$.ajax({
		url: "/member/joinCheck",
		method: "post",
		data: {
			name: name.value,
			email: email.value,
			password: password.value,
			pwdCheck: pwdCheck.value
		},
		async: "true", //비동기
		success: function(responseData){
            if(responseData == 'fail'){ //로직 추가 시, 컨트롤러 내 message 값을 추가하여 fail 값을 추가해서 해주면 됨
				console.log("responseData: " + responseData);
				$('#email-invalid-claim-alert').show();
				email.focus();
                flag = false;
                
            } else if(responseData == 'success'){
				$('#email-invalid-claim-alert').hide();
				console.log("responseData success...");
				$.ajax({
					url: "/member/join",
					method: "post",
					data: {
						name: name.value,
						email: email.value,
						password: password.value,
						pwdCheck: pwdCheck.value
					},
					async: "false", //동기
					success: function(responseData){
						console.log("responseData", responseData);
						if(responseData=="success"){
							window.location.href = "/"
						}
					},
					error:  function(request, status, error){// 에러발생시 실행할 함수
						alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
						}
		}) //ajax
		} //else if
		} // success: function()
	}) //$.ajax
	activeFunc();
}

function activeFunc(){
	console.log("실행");
	
}