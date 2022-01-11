function memberJoinCheck(){
	if(!document.joinForm.value){
		$('#name-missing-alert').show();
		return false;
	}
}