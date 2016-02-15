angular.module('userApp.services', [])
  .factory('userAPIservice', function($http) {
    //var userAPI = {};
	  var userAPI = this;
	 // var self = this;

    userAPI.getListUsers = function() {
      return $http({
        method: 'post', 
        url: 'http://localhost:8080/Samplea/listUser.html'
      });
    }
    this.getListUsers();
    userAPI.editUser = function(id) {
    	var UserDTO = {};
    	UserDTO.userId = "34";
        return $http({
          method: 'post', 
          url: 'http://localhost:8080/Samplea/editUser.html',
          data  : UserDTO
        });
      }

    userAPI.saveUser = function(employee) {
    	var UserDTO = {};
    	UserDTO.userId = employee.empId;
    	UserDTO.fname = employee.empName;
    	UserDTO.lname = employee.lastname;
    	UserDTO.mname = employee.middlename;
    	UserDTO.phNumber = employee.phnumber;
    	UserDTO.email = employee.email;
    	
        return $http({
          method: 'post', 
          url: 'http://localhost:8080/Samplea/updateUser.html',
          data  : UserDTO
        });
      }



    return userAPI;
  });