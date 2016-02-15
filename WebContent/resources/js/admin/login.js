
function validateLogin() {
	var userId = $('#userId').val();
	var password = $('#password').val();
	var inData = {};
	var LoginDTO = {};
	LoginDTO.userId=userId;
	LoginDTO.password=password;
	inData.LoginDTO = LoginDTO;
	var url="validateLogin.html";
	ajaxFormSubmitSync(url, LoginDTO, onLoginSuccess, onLoginError);
}

function onLoginSuccess(response){
	if(response.object == 'success'){
		alert("login successfully");
	}
	
}

function onLoginError(){
	alert("ASD11");
	alert("Failure");
}