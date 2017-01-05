package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import domain.Item;
import service.ItemService;

@Controller
public class ItemController {

	@Autowired
	ItemService itemService;

	/*@RequestMapping(value = "/addItem", method = RequestMethod.GET)
	public String addItem(Model model) {
		model.addAttribute("item", new Item());
		return "addItem";
	}*/

	/*@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public String saveItem(@ModelAttribute("item") Item item, Model model) {
		itemService.save(item);
		return "addItem";
	}*/
}
