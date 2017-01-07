package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.UserDao;
import domain.User;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String addUser(Model model) {
		return "addUser";
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user,BindingResult result, Model model, @RequestParam MultipartFile image, @RequestParam("dob") String dob) throws IOException, ParseException {
		if(image!=null){
			user.setImage(image.getBytes());
		}
		System.out.println("++++++++++++++++++"+dob);

		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd"); 
		Date startDate = df.parse(dob);
		
		user.setDob(startDate);
		userService.save(user);
		return "redirect:/users";
	}
	
	
	@RequestMapping(value = "/image/{userId}", method = RequestMethod.GET)
	public void getImageForProduct(Model model, @PathVariable("userId") int userId, HttpServletResponse response,HttpServletRequest request) 
	          throws ServletException, IOException {
		
		System.out.println("getting image");
		
		User user = userService.findUserById(userId);
	    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    ServletOutputStream out = response.getOutputStream();
	    out.write(user.getImage());
	    out.close();
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
