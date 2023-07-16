package com.springBoot.jsp.OES.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springBoot.jsp.OES.entity.User;
import com.springBoot.jsp.OES.service.UserServices;

@Controller
public class UserController {
	
	@Autowired
	private UserServices userServices;
	
	@GetMapping("/registrationForm")
	public String myRegistrationForm(Model model) {
		User u = new User();
		model.addAttribute("User", u);
		return "RegistrationForm";
	}

	
	  @PostMapping("/registerUser") 
	  public String registerUser(@ModelAttribute("User") User user)
	  {
		  userServices.saveUser(user); 
	  return  "redirect:/registrationForm";
	  }
	  
	@GetMapping("/userList")
	public String getAllUserPage(Model model) {
		List<User> allUser = userServices.getAllUsers();
		model.addAttribute("userList", allUser);
		return "UserList";
	}
	
	@GetMapping("/userOperation,{Action},{Uid}")
	public String userOperation(Model model, @PathVariable("Action") String action, @PathVariable("Uid") int userId) {
		switch( action){
			case "DELETE":  userServices.deleteUserById(userId);
			//case "EDIT":  userServices.editUserById();
		}
		return "redirect:/userList";
	}


}
