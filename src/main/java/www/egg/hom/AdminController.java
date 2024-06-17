package www.egg.hom;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//@Controller
public class AdminController {
	@GetMapping("adminEnter") // 관리자 페이지 
	public String adminEnter(HttpSession session) {
		return "admin/adminMain";
	}
}
