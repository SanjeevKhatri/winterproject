package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.UserDao;
import domain.User;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String addUser(@ModelAttribute("user") User user, Model model) {
		return "addUser";
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user, Model model) {
		userService.save(user);
		return "redirect:/users";
	}
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String diaplayAllUser(Model model) {
		model.addAttribute("users", userService.findAll());
		return "users";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteUser(@RequestParam("userId") int id, ModelMap model) {
		User user = userService.findUserById(id);
		userService.delete(user);
		return "redirect:/users";
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(@RequestParam("userId") int id, ModelMap model) {
		User user = userService.findUserById(id);
		model.addAttribute("user", user);
		return "addUser";
	}
	
}
