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
import www.egg.vo.OptionVO;

@Controller
public class MenuController {

	@Inject
	IF_MenuService mservice;

	@Inject
	FileDataUtil filedatautil;

	@GetMapping(value ="option_input")
	public String option_input() {	//옵션 입력 창으로 이동

		return "optionInput";
	}

	@PostMapping(value ="/option_inputSave")
	public String option_input(@ModelAttribute OptionVO ovo,
			MultipartFile[] file) throws Exception {	//옵션 등록 과정
		String[] filename = filedatautil.fileUpload(file);

		for(int i=0; i<filename.length; i++) {
			System.out.println(filename[i]);
		}
		ovo.setFilename(filename);
		mservice.option_insert(ovo);

		return "redirect:menu_List";
	}


	/*@GetMapping(value ="/viewDetail")
	public String option_viewDetail(@RequestParam("option_no") String no,
			Model model) throws Exception { //선택한 사이드 메뉴 정보 보기
		OptionVO ovo = mservice.option_modno(no);
		List<String> attackList = mservice.getFilename(no);
		model.addAttribute("ovo", ovo);
		model.addAttribute("attackList", attackList);
		return "optionPick";
	}*/


	@RequestMapping("/option_List")
	public String option_allList(@ModelAttribute OptionVO ovo,
			Model model) throws Exception {	//옵션 전체보기
		List<OptionVO> allList = mservice.option_List();
		model.addAttribute("optionList", allList);

		return "optionList";
	}

	@PostMapping(value = "/option_delete")
	public String option_delete(@ModelAttribute OptionVO ovo) throws Exception {	//등록한 옵션 삭제 과정
		mservice.option_delete(ovo);

		return "redirect:option_List";
	}

	@GetMapping(value ="/option_update")
	public String option_up(@ModelAttribute OptionVO ovo, Model model) {		//옵션 수정 창으로 이동
		model.addAttribute("ovo", ovo);

		return "optionUpdate";
	}

	@PostMapping(value ="/option_updateset")
	public String option_update(@ModelAttribute OptionVO ovo) throws Exception {	//옵션 수정 동작 과정
		mservice.option_update(ovo);

		return "redirect:option_List";
	}

	//----------------------------------------------------------메뉴

	@GetMapping(value ="/menu_input")
	public String menu_input() {		//치킨 입력 창으로 이동

		return "menuInput";
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

	@GetMapping(value ="/")
	public String main() {		//메인 창으로이동

		return "main";
	}

	@GetMapping(value ="/viewDetail")
	public String menu_viewDetail(@RequestParam("menu_no") String no,
			Model model) throws Exception {		//선택한 치킨 정보 보기
		MenuVO mvo = mservice.modno(no);
		List<String> attackList = mservice.getFilename(no);
		model.addAttribute("mvo", mvo);
		model.addAttribute("attackList", attackList);
		return "menuPick";
	}

	@RequestMapping("/menu_List")
	public String menu_allList(@ModelAttribute MenuVO mvo,
			Model model) throws Exception {	//전체보기
		List<MenuVO> allList = mservice.menuList();
		model.addAttribute("menuList", allList);

		return "menuList";
	}

	@PostMapping(value = "/menu_delete")
	public String menu_delete(@ModelAttribute MenuVO mvo) throws Exception {	//등록한 치킨 삭제 과정
		mservice.delete(mvo);

		return "redirect:menu_List";
	}

	@GetMapping(value ="/menu_update")
	public String menu_up(@ModelAttribute MenuVO mvo, Model model) {		//수정 창으로 이동
		model.addAttribute("mvo", mvo);

		return "menuUpdate";
	}

	@PostMapping(value ="/menu_updateset")
	public String menu_update(@ModelAttribute MenuVO mvo) throws Exception {	//수정 동작 과정
		mservice.update(mvo);

		return "redirect:menu_List";
	}

}
