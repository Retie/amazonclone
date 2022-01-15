function joinCheck(){
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var password = document.getElementById("password");
	var pwdCheck = document.getElementById("pwdCheck");
	
	if(name.value == ""){
		$('#name-missing-alert').show();	
		name.focus();
		return false;
	};
	
	document.joinForm.submit();
}