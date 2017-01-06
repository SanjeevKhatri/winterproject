package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import domain.*;
import service.*;
import service.UserService;

@Controller
public class ReportController {
	
	@Autowired
	EventService eventService;
	
	@Autowired
	UserService userService;
	
	
	
	@RequestMapping(value = "/report/{eventId}", method = RequestMethod.GET)
	public String generateReport(@PathVariable("eventId") int id, Model model) {
		Event event = eventService.findEventById(id);
		double totalAmount = 0;
		for(Item item : event.getItems()){
			totalAmount += item.getPrice();
		}
		List<User> users = userService.findAll();
		model.addAttribute("users", users);
		model.addAttribute("event", event);
		model.addAttribute("totalAmount", totalAmount);
		return "report";
	}
	
	
}
