package controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import domain.Item;
import domain.User;
import service.EventService;
import service.UserService;

@Controller
public class HomeController {
	@Autowired
	UserService userService;
	
	@Autowired
	EventService eventService;

	// @RequestMapping(value = "/", method = RequestMethod.GET)
	// public String home(Locale locale, Model model) {
	// Date date = new Date();
	// DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
	// DateFormat.LONG, locale);
	//
	// String formattedDate = dateFormat.format(date);
	//
	// model.addAttribute("serverTime", formattedDate);
	//
	// return "home";
	// }

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("user", userService.findUserByName("manoj"));
		return "index";
	}

	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(Model model) {
		model.addAttribute("user", userService.findUserByName("manoj"));
		return "event";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(Model model) {
		model.addAttribute("user", userService.findUserByName("manoj"));
		return "signup";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String feedafterlogin(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("loginuser", user);
		model.addAttribute("events", eventService.findAll());
		return "events";
	}

	@RequestMapping(value = "/feed", method = RequestMethod.GET)
	public String feed(Model model) {
		model.addAttribute("user", userService.findUserByName("manoj"));
		return "events";
	}

}
