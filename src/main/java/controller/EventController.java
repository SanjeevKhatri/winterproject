package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import dao.UserDao;
import domain.Event;
import domain.Item;
import domain.User;
import service.EventService;
import service.ItemService;
import service.UserService;

@Controller
public class EventController {
	@Autowired
	EventService eventService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	ItemService itemService;
	
	
	List<Item> items = new ArrayList<>();
	List<User> users = new ArrayList<>();
	@RequestMapping(value = "/seeevents", method = RequestMethod.GET)
	public String addItem(Model model) {
		return "eventfeed";
	}
	
	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	public String addEvent(@ModelAttribute("event") Event event, Model model) {
		return "addEvent";
	}
	
	@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
	public String saveEvent(@ModelAttribute("event") Event event,@RequestParam("id") int id, Model model) {
		Event eventTemp = eventService.findEventById(id);
		if(eventTemp!=null){
			eventTemp.setName(event.getName());
			eventTemp.setPlace(event.getPlace());
			eventService.save(eventTemp);
		}
		else{
			eventService.save(event);
		}
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
	
	@RequestMapping(value = "/addEventDetail/{eventId}", method = RequestMethod.GET)
	public String saveEventDetail(@PathVariable("eventId") int id, ModelMap model) {
		List<Item> tempItem = new ArrayList<>();
		Event event = eventService.findEventById(id);
		
		for(User user: users){
			user.setEvent(event);
			userService.save(user);
		}
		for(Item item: items){
			itemService.save(item);
		}
		for(Item item: items){
			System.out.println(item.getName());
			tempItem.add(itemService.findByName(item.getName()));
		}
		System.out.println(tempItem.get(0).getName());
		event.setItems(tempItem);
		event.setUsers(users);
		eventService.save(event);
		return "redirect:/report/"+id;
	}
	
	@RequestMapping(value = "/addEventItem", method = RequestMethod.POST)
	public String addItem(@RequestParam("eventId")int eventId, @RequestParam("name")String name, @RequestParam("price")double price, Model model) {
			items.add(new Item(name,price));
			System.out.println(eventId);
			model.addAttribute("items", items);
			return "redirect:/eventDetail/"+eventId;
			
	}
	
	@RequestMapping(value = "/addEventUser", method=RequestMethod.POST)
	public String addEventUser(@RequestParam("user") String[] userName, Model model, @RequestParam("eventId")int eventId) {
			for(String name : userName){
				users.add(userService.findUserByName(name));
			}
			return "redirect:/eventDetail/"+eventId;
			
	}
	
	/*@RequestMapping(value = "/addEventItem", method = RequestMethod.POST)
	public String addEventDetail(@RequestParam("eventId")int eventId, @RequestParam("name")String name, @RequestParam("price")double price, Model model) {
			items.add(new Item(name,price));
			System.out.println(eventId);
			model.addAttribute("items", items);
			return "redirect:/eventDetail/"+eventId;
			
	}*/
	
	@RequestMapping(value = "/eventDetail/{eventId}", method = RequestMethod.GET)
	public String eventDetail(@PathVariable("eventId") int id, Model model) {
			model.addAttribute("activeUser", users);
			model.addAttribute("items", items);
			model.addAttribute("users", userService.findAll());
			model.addAttribute("event", eventService.findEventById(id));
			return "eventDetail";
	}
}
