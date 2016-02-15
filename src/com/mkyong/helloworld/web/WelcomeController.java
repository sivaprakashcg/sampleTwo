package com.mkyong.helloworld.web;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mkyong.helloworld.service.HelloWorldService;
import com.sampleapp.viewDTO.JSONResponse;
import com.sampleapp.viewDTO.LoginDTO;
import com.thoughtworks.xstream.core.BaseException;

import sun.security.util.SecurityConstants;

@Controller
public class WelcomeController {

	//private final //logger //logger = //loggerFactory.get//logger(WelcomeController.class);
	private final HelloWorldService helloWorldService;

	@Autowired
	public WelcomeController(HelloWorldService helloWorldService) {
		this.helloWorldService = helloWorldService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Map<String, Object> model) {

		//logger.debug("index() is executed!");

		model.put("title", helloWorldService.getTitle(""));
		model.put("msg", helloWorldService.getDesc());
		
		return "login/Login";
	}

	@RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {

		//logger.debug("hello() is executed - $name {}", name);

		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		
		model.addObject("title", helloWorldService.getTitle(name));
		model.addObject("msg", helloWorldService.getDesc());
		
		return model;

	}

	@RequestMapping(value = "/testing/{name:.+}", method = RequestMethod.GET)
	public ModelAndView test(@PathVariable("name") String name) {

		//logger.debug("hello() is executed - $name {}", name);

		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		
		model.addObject("title", helloWorldService.getTitle(name));
		model.addObject("msg", helloWorldService.getDesc());
		
		return model;

	}

	/**
	 * Validate if the login credentials are valid
	 * @param session
	 * @return Login details
	 */
	@RequestMapping(headers = { "Accept=application/json" }, value = "/validateLogin.html", method = RequestMethod.POST)
	public @ResponseBody
	JSONResponse authenticateLogin(@RequestBody LoginDTO loginDTO) {
		JSONResponse response = new JSONResponse();
		System.out.println(loginDTO.getUserId());
		System.out.println(loginDTO.getPassword());
		response.setObject("success");
		return response;

	}


}
