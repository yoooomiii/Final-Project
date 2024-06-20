
package www.egg.hom;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import www.egg.service.IF_MenuService;
import www.egg.util.FileDataUtil;
import www.egg.vo.MenuVO;

//@Controller
public class MenuController {

	@Inject
	IF_MenuService mservice;

	@Inject
	FileDataUtil filedatautil;
	
	
	@GetMapping(value ="/Detail")
	public String item_Detail(@RequestParam("menu_no") String no,
			Model model) throws Exception {		//선택한 치킨 정보 보기
		MenuVO mvo = mservice.modno(no);
		List<MenuVO> List = mservice.menuList();
		model.addAttribute("List", List);
		model.addAttribute("mvo", mvo);
		
		return "menu/itemInput";
	}

	@GetMapping(value ="/menu_input")
	public String menu_input() {		//치킨 입력 창으로 이동

		return "menu/menuInput";
	}

	@PostMapping(value="/menu_inputSave")
	public String menu_input(@ModelAttribute MenuVO mvo, 
			MultipartFile[] file) throws Exception {	//치킨 등록 과정
		String[] filename = filedatautil.fileUpload(file);

		for(int i=0; i<filename.length; i++) {
			System.out.println(filename[i]);
		}
		mvo.setFilename(filename);
		mservice.insert(mvo);
		return "redirect:menu_List";
	}
	 
	@GetMapping(value ="/menuForm")
	public String menu() {		//메뉴 창으로 이동

		return "menu/menu";
	}

	@GetMapping(value ="/viewDetail")
	public String menu_viewDetail(@RequestParam("menu_no") String no,
			Model model) throws Exception {		//선택한 치킨 정보 보기
		MenuVO mvo = mservice.modno(no);
		List<String> attackList = mservice.getFilename(no);
		model.addAttribute("mvo", mvo);
		model.addAttribute("attackList", attackList);
		
		return "menu/menuPick";
	}
	
	@GetMapping(value ="/mviewDetail")
	public String menuKeep(@RequestParam("menu_no") String no,
			Model model) throws Exception {		//메뉴선택후 장바구니 과정 옵션 선택
		MenuVO mvo = mservice.modno(no);
		List<String> attackList = mservice.getFilename(no);
		List<MenuVO> List = mservice.menuList();
		model.addAttribute("List", List);
		model.addAttribute("mvo", mvo);
		model.addAttribute("attackList", attackList);
		
		return "menu/menuKeep";
	}
	
	@RequestMapping("/menu_List")
	public String menu_allList(@ModelAttribute MenuVO mvo,
			Model model) throws Exception {	//전체보기
		List<MenuVO> allList = mservice.menuList();
		model.addAttribute("menuList", allList);

		return "menu/menuList";
	}

	@PostMapping(value = "/menu_delete")
	public String menu_delete(@ModelAttribute MenuVO mvo) throws Exception {	//치킨 삭제 과정
		mservice.delete(mvo);

		return "redirect:menu_List";
	}

	@GetMapping(value ="/menu_update")
	public String menu_up(@ModelAttribute MenuVO mvo, Model model) {		//수정 창으로 이동
		model.addAttribute("mvo", mvo);

		return "menu/menuUpdate";
	}

	@PostMapping(value ="/menu_updateset")
	public String menu_update(@ModelAttribute MenuVO mvo) throws Exception {	//수정 동작 과정
		mservice.update(mvo);

		return "redirect:menu_List";
	}

}
