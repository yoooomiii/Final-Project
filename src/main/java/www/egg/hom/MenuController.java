
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

//@Controller
public class MenuController {
	//0614_hong 나는 홍성우다. CRUD 끝
	@Inject
	IF_MenuService mservice;

	@Inject
	FileDataUtil filedatautil;

	@GetMapping(value ="option_input")

	public String option_input() {	//옵션 입력 창으로 이동
		
		System.out.println("test우우우이이이");
		return null;
		
	}

	@PostMapping(value ="/option_inputSave")
	public String option_input(@ModelAttribute OptionVO ovo,
			MultipartFile[] file) throws Exception {	//�샃�뀡 �벑濡� 怨쇱젙
		String[] filename = filedatautil.fileUpload(file);

		for(int i=0; i<filename.length; i++) {
			System.out.println(filename[i]);
		}
		ovo.setFilename(filename);
		mservice.option_insert(ovo);

		return "redirect:option_List";
	}

	@GetMapping(value ="/oviewDetail")
	public String option_viewDetail(@RequestParam("side_no") String sno,
			Model model) throws Exception { //�꽑�깮�븳 �궗�씠�뱶 硫붾돱 �젙蹂� 蹂닿린
		OptionVO ovo = mservice.option_modno(sno);
		List<String> attackList = mservice.option_getFilename(sno);
		model.addAttribute("ovo", ovo);
		model.addAttribute("attackList", attackList);
		return "optionPick";
	}

	@RequestMapping("/option_List")
	public String option_allList(@ModelAttribute OptionVO ovo,
			Model model) throws Exception {	//�샃�뀡 �쟾泥대낫湲�
		List<OptionVO> allList = mservice.option_List();
		model.addAttribute("optionList", allList);

		return "optionList";
	}

	@PostMapping(value = "/option_delete")
	public String option_delete(@ModelAttribute OptionVO ovo) throws Exception {	//�벑濡앺븳 �샃�뀡 �궘�젣 怨쇱젙
		mservice.option_delete(ovo);

		return "redirect:option_List";
	}

	@GetMapping(value ="/option_update")
	public String option_up(@ModelAttribute OptionVO ovo, Model model) {		//�샃�뀡 �닔�젙 李쎌쑝濡� �씠�룞
		model.addAttribute("ovo", ovo);

		return "optionUpdate";
	}

	@PostMapping(value ="/option_updateset")
	public String option_update(@ModelAttribute OptionVO ovo) throws Exception {	//�샃�뀡 �닔�젙 �룞�옉 怨쇱젙
		mservice.option_update(ovo);

		return "redirect:option_List";
	}

	@GetMapping(value ="/menu_input")
	public String menu_input() {		//移섑궓 �엯�젰 李쎌쑝濡� �씠�룞

		return "menuInput";
	}

	@PostMapping(value="/menu_inputSave")
	public String menu_input(@ModelAttribute MenuVO mvo, 
			MultipartFile[] file) throws Exception {	//移섑궓 �벑濡� 怨쇱젙
		String[] filename = filedatautil.fileUpload(file);

		for(int i=0; i<filename.length; i++) {
			System.out.println(filename[i]);
		}
		mvo.setFilename(filename);
		mservice.insert(mvo);
		System.out.println("집갈게요");
		return "redirect:menu_List";
	}

	@GetMapping(value ="/")
	public String main() {		//硫붿씤 李쎌쑝濡쒖씠�룞

		return "main";
	}

	@GetMapping(value ="/viewDetail")
	public String menu_viewDetail(@RequestParam("menu_no") String no,
			Model model) throws Exception {		//�꽑�깮�븳 移섑궓 �젙蹂� 蹂닿린
		MenuVO mvo = mservice.modno(no);
		List<String> attackList = mservice.getFilename(no);
		model.addAttribute("mvo", mvo);
		model.addAttribute("attackList", attackList);
		return "menuPick";
	}
	
	@GetMapping(value ="/menuch")
	public String menuKeep(@RequestParam("menu_no") String no,
			Model model) throws Exception {		//�꽑�깮�븳 �궗吏� 諛� �궗�씠�뱶 硫붾돱 異쒕젰
		MenuVO mvo = mservice.modno(no);
		List<String> attackList = mservice.getFilename(no);
		model.addAttribute("mvo", mvo);
		model.addAttribute("attackList", attackList);
		return "item";
	}
	
	@GetMapping(value ="/box")
	public String Keep(@ModelAttribute MenuVO mvo, Model model) {		//二쇰Ц �긽�꽭李� �씠�룞 李쎌쑝濡쒖씠�룞
		model.addAttribute("mvo", mvo);
		
		return "menuKeep";
	}

	@RequestMapping("/menu_List")
	public String menu_allList(@ModelAttribute MenuVO mvo,
			Model model) throws Exception {	//�쟾泥대낫湲�
		List<MenuVO> allList = mservice.menuList();
		model.addAttribute("menuList", allList);

		return "menuList";
	}

	@PostMapping(value = "/menu_delete")
	public String menu_delete(@ModelAttribute MenuVO mvo) throws Exception {	//�벑濡앺븳 移섑궓 �궘�젣 怨쇱젙
		mservice.delete(mvo);

		return "redirect:menu_List";
	}

	@GetMapping(value ="/menu_update")
	public String menu_up(@ModelAttribute MenuVO mvo, Model model) {		//�닔�젙 李쎌쑝濡� �씠�룞
		model.addAttribute("mvo", mvo);

		return "menuUpdate";
	}

	@PostMapping(value ="/menu_updateset")
	public String menu_update(@ModelAttribute MenuVO mvo) throws Exception {	//�닔�젙 �룞�옉 怨쇱젙
		mservice.update(mvo);

		return "redirect:menu_List";
	}
}
