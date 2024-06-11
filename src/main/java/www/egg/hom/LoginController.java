package www.egg.hom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	// 집가서 자고 싶다.
	
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "loginF";
	}
}
