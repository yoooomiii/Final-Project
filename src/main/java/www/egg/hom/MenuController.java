
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
import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;
import www.egg.vo.PaymentVO;

@Controller
public class MenuController {

	@Inject
	IF_MenuService mservice;

	@Inject
	FileDataUtil filedatautil;
	
	@PostMapping(value ="/payment_inputSave")
	public String patment_inputSave(@ModelAttribute PaymentVO pvo) throws Exception {	//결제테이블 등록
		mservice.payment_insert(pvo);
		
		return "redirect:payment_List";
	}
	
	@GetMapping(value ="/payment_input")
	public String patment_input(@ModelAttribute PaymentVO pvo) throws Exception {	//결제테이블로 이동
		
		return "menu/paymentInput";
	}
	
	@GetMapping(value ="/item_delete")
	public String item_delete(@ModelAttribute ItemVO ivo) throws Exception {	//장바구니 삭제
		mservice.item_delete(ivo);
		
		return "redirect:item_List";
	}

	@RequestMapping("/item_List")
	public String item_List(@ModelAttribute ItemVO ivo,
			Model model) throws Exception {	//장바구니 전체보기
		List<ItemVO> itemList = mservice.itemList();
		model.addAttribute("itemList", itemList);
		return "menu/itemList";
	}
	
	@GetMapping(value ="/item_inputSave")
	public String item_input(@ModelAttribute ItemVO ivo,
			@RequestParam("i_no") String iNo,
            @RequestParam("i_id") String iId,
            @RequestParam("menu_no") String no,
            @RequestParam(value = "menu_no2", required = false) String menuNo2,
            @RequestParam(value = "menu_no3", required = false) String menuNo3,
            @RequestParam(value = "menu_no4", required = false) String menuNo4,
            @RequestParam("menu_name") String name,
            @RequestParam("i_price") String iPrice,
            Model model) throws Exception {	//장바구니 등록 과 동시에 장바구니 리스트로 이동
		model.addAttribute("i_no", iNo);
        model.addAttribute("i_id", iId);
        model.addAttribute("menu_no", no);
        model.addAttribute("menu_no2", menuNo2);
        model.addAttribute("menu_no3", menuNo3);
        model.addAttribute("menu_no4", menuNo4);
        model.addAttribute("menu_name", name);
        model.addAttribute("i_price", iPrice);
		
		mservice.item_insert(ivo);
		return "redirect:item_List";
	}
	
	@GetMapping(value ="/mviewDetail")
	public String test(@RequestParam("menu_no") String no,
			Model model) throws Exception {	//장바구니 에서 사이드메뉴 체크 과정
		MenuVO mvo = mservice.modno(no);
		List<String> attackList = mservice.getFilename(no);
		List<MenuVO> List = mservice.sideList();
		model.addAttribute("List", List);
		model.addAttribute("mvo", mvo);
		model.addAttribute("attackList", attackList);
		
		return "menu/menuKeep";
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
	
//	@GetMapping(value ="/mviewDetail")
//	public String menuKeep(@RequestParam("menu_no") String no,
//			Model model) throws Exception {		//메뉴선택후 장바구니 과정 옵션 선택
//		MenuVO mvo = mservice.modno(no);
//		List<String> attackList = mservice.getFilename(no);
//		List<MenuVO> List = mservice.menuList();
//		model.addAttribute("List", List);
//		model.addAttribute("mvo", mvo);
//		model.addAttribute("attackList", attackList);
//		
//		return "menu/menuKeep";
//	}
	
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
