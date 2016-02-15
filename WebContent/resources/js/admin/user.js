angular.module("userApp",['userApp.services']).controller("userController",userController);

userController.$inject = ['$scope','userAPIservice'];


function userController($scope,userAPIservice){
	var vm = this;
	vm.message = "Welcome to Java4s AngularJS Tutorials";       
	userAPIservice.getListUsers().success(function (response) {
	   vm.employeLst = response.messageList;
	});
	
	vm.myFunction = function (id){
		
		var empLst = vm.employeLst; 
		
		   for(var i = 0; i < empLst.length; i++){
	           if(empLst[i].empId === id) {
	              vm.employee = angular.copy(empLst[i]);
	              break;
	           }
	       }
	}
	
	vm.saveUser = function(){
		userAPIservice.saveUser(vm.employee).success(function (response) {
			  
		});
	}
	
}





/*
var app = angular.module("userApp", ['userApp.services']);
app.controller("userController", function($scope,userAPIservice) {
	
   $scope.message = "Welcome to Java4s AngularJS Tutorials";       
   userAPIservice.getListUsers().success(function (response) {
      $scope.employeLst = response.messageList;
   });
   
      
   $scope.myFunction = function(empid) {
	   var empLst = $scope.employeLst; 
	   
       for(var i = 0; i < empLst.length; i++){
           if(empLst[i].empId === id) {
              $scope.employee = angular.copy(empLst[i]);
              break;
           }
       }
       
	   userAPIservice.editUser(empid).success(function (response) {
		      $scope.employee = response.object;
		   });
			
   }
   userAPIservice.updateUser(19).success(function (response) {
      $scope.employee = response.object;
   });
   
   
   
});
*/
/*
function saveUser(){
var fname= $("#fname").val();
var lname=$("#lname").val();
var mname=$("#mname").val();
var phNumber=$("#phNumber").val();
var email=$("#email").val();
var UserDTO = {};
UserDTO.fname=fname;
UserDTO.lname=lname;
UserDTO.mname=mname;
UserDTO.phNumber=phNumber;
UserDTO.email=email;
var url="saveUser.html";
ajaxFormSubmitSync(url, UserDTO, onRegisterSucc, null);
}


function cancel(){
	alert("cancel called");
	document.register.action="listUser";
	document.register.submit();
	
}

function onRegisterSucc(response){
	if(response.object == 'success'){
		alert("Successfully registered");
	}
}

function loadListUser(){
	var url = "listUser";
	ajaxFormSubmitSync(url, null, loadUser, null);
}

function loadUser(response){
	var list = response.messageList;
	for(var i=0;i < list.length; i++){
		//alert(list[i].empName);
		console.log(list[i].empName);
	}
}

*/