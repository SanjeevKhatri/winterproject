package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import dao.UserDao;
import domain.Event;
import domain.User;
import service.EventService;

@Controller
public class EventController {
	@Autowired
	EventService eventService;
	
	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	public String addEvent(@ModelAttribute("event") User user, Model model) {
		return "addEvent";
	}
	
	@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
	public String saveEvent(@ModelAttribute("event") Event event, Model model) {
		eventService.save(event);
		return "redirect:/events";
	}
	
	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public String diaplayAllEvent(Model model) {
		model.addAttribute("events", eventService.findAll());
		return "events";
	}
	
	@RequestMapping(value = "/deleteEvent", method = RequestMethod.POST)
	public String deleteEvent(@RequestParam("eventId") int id, ModelMap model) {
		Event event = eventService.findEventById(id);
		eventService.delete(event);
		return "redirect:/events";
	}
	
	@RequestMapping(value = "/updateEvent", method = RequestMethod.POST)
	public String updateEvent(@RequestParam("eventId") int id, ModelMap model) {
		Event event = eventService.findEventById(id);
		model.addAttribute("event", event);
		return "addEvent";
	}
	
}
