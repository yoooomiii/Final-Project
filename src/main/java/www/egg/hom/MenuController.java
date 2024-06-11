package www.egg.hom;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import www.egg.service.IF_MenuService;
import www.egg.vo.MenuVO;

@Controller
public class MenuController {
	
	@Inject
	IF_MenuService mservice;
	
	@PostMapping(value="/inputSave")
	public String input(@ModelAttribute MenuVO mvo) throws Exception {
		mservice.insert(mvo);
		System.out.println("����?");
		return null;
	}
	

}
