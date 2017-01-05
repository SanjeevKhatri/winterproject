package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import domain.Item;
import service.ItemService;

@Controller
public class ItemController {

	@Autowired
	ItemService itemService;

	@RequestMapping(value = "/addItem", method = RequestMethod.GET)
	public String addItem(Model model) {
		return "addItem";
	}

	@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public String saveItem(@ModelAttribute("item") Item item, Model model) {
		itemService.save(item);
		model.addAttribute("latestItem", item);
		return "addItem";
	}
	
	
	
//	@RequestMapping(value = "/updateitem/{id}", method = RequestMethod.GET)
//	public String updateItemById(@PathVariable("id") int id, @ModelAttribute("updatevehicle") Vehicle updatevehicle,
//			Model model) {
//		Vehicle vehicle = vehicleservice.findById(id);
//		model.addAttribute("updatevehicle", vehicle);
//		return "updatevehicle";
//	}
//
//	@RequestMapping(value = "/updateitem/{id}", method = RequestMethod.POST)
//	public String updateItem(@PathVariable("id") int id, @ModelAttribute("updatevehicle") Vehicle updatevehicle) {
//		updatevehicle.setId(id);
//		vehicleservice.addVehicle(updatevehicle);
//		return "redirect:/vehicleList";
//	}

	@RequestMapping("/deleteitem/{id}")
	public String removeItem(@PathVariable("id") int id) {
		itemService.deleteItem(id);
		return "redirect:/addItem";
	}

}
