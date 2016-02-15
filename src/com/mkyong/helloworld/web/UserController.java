package com.mkyong.helloworld.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.persistance.Employee;
import com.mkyong.helloworld.service.HelloWorldService;
import com.mkyong.helloworld.service.UserService;
import com.sampleapp.viewDTO.JSONResponse;
import com.sampleapp.viewDTO.LoginDTO;
import com.sampleapp.viewDTO.UserDTO;

@Controller
public class UserController {

	private UserService userService;
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value = "/registerUser", method = RequestMethod.GET)
	public String displayUserRegister(){
		
		return "user/RegistrationUser";
	}
	
	@RequestMapping(value = "/saveUser1", method = RequestMethod.POST)
	public String saveUser1(){
	
		return "user/RegistrationUser";
	}
	
	@RequestMapping(headers = { "Accept=application/json" }, value = "/saveUser", method = RequestMethod.POST)
	public @ResponseBody
	JSONResponse  saveUser(@RequestBody UserDTO userDTO){
		JSONResponse response = new JSONResponse();
		System.out.println(userDTO.getFname());
		System.out.println(userDTO.getLname());
		userService.saveUser(userDTO);
		response.setObject("success");
		return response;
	}
	

	@RequestMapping(headers = { "Accept=application/json" }, value = "/listUser", method = RequestMethod.POST)
	public @ResponseBody
	JSONResponse  listUser(){
		JSONResponse response = new JSONResponse();
		List<Employee> employees = userService.listUser();
		response.setMessageList(employees);
		response.setObject("success");
		return response;
	}
	
	@RequestMapping(value = "/displayUserList", method = RequestMethod.GET)
	public String displayUserList(){
		return "user/ListUser";
	}
	
	@RequestMapping(headers = { "Accept=application/json" }, value = "/editUser", method = RequestMethod.POST)
	public @ResponseBody
	JSONResponse  editUser(@RequestBody UserDTO userDTO){
		JSONResponse response = new JSONResponse();
		System.out.println(userDTO.getUserId());
		Employee employee = userService.editUser(userDTO);
		response.setObject(employee);
		return response;
	}
	
	@RequestMapping(headers = { "Accept=application/json" }, value = "/updateUser", method = RequestMethod.POST)
	public @ResponseBody
	JSONResponse  updateUser(@RequestBody UserDTO userDTO){
		JSONResponse response = new JSONResponse();
		System.out.println(userDTO.getUserId());
		boolean status = userService.updateUser(userDTO);
		response.setObject(status);
		return response;
	}
}
