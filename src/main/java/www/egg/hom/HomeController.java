package www.egg.hom;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


//@Controller
public class HomeController {


	  @GetMapping("/") public String home() {
	  
	  return "main"; }
	 
	

	@RequestMapping(value = "why", method = RequestMethod.GET)
	public String why(Model model) {
		
		return "ownPage";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "main";
	}

	
}