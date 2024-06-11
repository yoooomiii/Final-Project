package www.egg.hom;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import www.egg.service.IF_MenuService;
import www.egg.util.FileDataUtil;
import www.egg.vo.MenuVO;

@Controller
public class MenuController {
	
	@Inject
	IF_MenuService mservice;
	@Inject
	FileDataUtil filedatautil;

	@PostMapping(value="/inputSave")
	public String input(@ModelAttribute MenuVO mvo) throws Exception {
		mservice.insert(mvo);
	
		return null;
	}
	
	
	@GetMapping(value ="/input")
	public String input() {		//입력 창으로

		return "menuInput";

	}
	
	@PostMapping(value="/inputSave")
	public String input(@ModelAttribute MenuVO mvo, 
			MultipartFile[] file) throws Exception {	//입력
		/*
		 * String[] filename = filedatautil.fileUpload(file); for(int i=0;
		 * i<filename.length; i++) { System.out.println(filename[i]); }
		 * mvo.setFilename(filename);
		 */
		mservice.insert(mvo);
		
		return "redirect:List";
	}
	
	@RequestMapping("/List")
	public String allList(@ModelAttribute MenuVO mvo, Model model) throws Exception {	//전체보기
		List<MenuVO> allList = mservice.menuList();
		model.addAttribute("menuList", allList);
		
		return "menuList";
	}
	
	@PostMapping(value = "/delete")
	public String delete(@ModelAttribute MenuVO mvo) throws Exception {	//삭제
		mservice.delete(mvo);
		
		return "redirect:List";
	}
	
	@GetMapping(value ="/update")
	public String up(@ModelAttribute MenuVO mvo, Model model) {		//수정 창으로
		model.addAttribute("mvo", mvo);
		
		return "menuUpdate";
	}
	
	@PostMapping(value ="/updateset")
	public String update(@ModelAttribute MenuVO mvo) throws Exception {	//수정
		mservice.update(mvo);
		
		return "redirect:List";
	}

}
