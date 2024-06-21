package www.egg.hom;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import www.egg.service.IF_InfoService;
import www.egg.vo.AskVO;
import www.egg.vo.PageVO;

//@Controller
public class InfoController {

	@Inject
	IF_InfoService iservice;

	// 1:1 문의하기
	@RequestMapping(value="ask", method=RequestMethod.GET)
	public String infoPage (HttpSession session, AskVO avo) throws Exception {
		session.getAttribute("userid"); 
		session.getAttribute("username"); 
		session.getAttribute("usergrade");

		avo.setA_id(session.getId());

		System.out.println(session.getAttribute("userid"));

		return "info/askpage";
	}

	// 
	@PostMapping("infoSave")
	public String infoSave(AskVO avo, HttpSession session) throws Exception {

		String userid = (String) session.getAttribute("userid");
		avo.setA_id(userid);
		iservice.insert(avo);
		//System.out.println(avo.toString());

		return "redirect:allList";
	}

	@GetMapping("detailView")
	public String detailView(@RequestParam("a_num") Integer a_num, Model model) throws Exception {

		AskVO avo = iservice.selectOne(a_num);

		model.addAttribute("avo", avo);

		return "info/detailViewUser";
	}

	// 문의 게시판 조회하기
	@GetMapping("allList")
	public String allList(AskVO avo, HttpSession session, 
			Model model, @ModelAttribute PageVO pvo) throws Exception {

		if(pvo.getPage()==null) {
			pvo.setPage(1);
		}
		//iservice.getTotalCount();
		//pvo.setTotalCount(iservice.getTotalCount());

		String id = (String) session.getAttribute("userid");
		avo.setA_id(id);

		List<AskVO> askList = iservice.allList(id);

		model.addAttribute("allListitems", askList);
		//model.addAttribute("pvo", pvo);

		//System.out.println(id);
		//System.out.println(askList);

		return "info/infoList";
	}

	//---------------------------------------------- 관리자

	// 문의 게시판 전체 목록 조회하기
	@GetMapping("masterview")
	public String allListMarter(AskVO avo, 
			Model model, @ModelAttribute PageVO pvo) throws Exception {

		if(pvo.getPage()==null) {
			pvo.setPage(1);
		}
		//iservice.getTotalCount();
		//pvo.setTotalCount(iservice.getTotalCount());

		List<AskVO> askList = iservice.allListMa();

		model.addAttribute("allListitems", askList);
		//model.addAttribute("pvo", pvo);
		//System.out.println(id);
		//System.out.println(askList);

		return "info/infoListMaster";
	}
	
	@GetMapping("detailViewMa")
	public String detailViewMa(@RequestParam("a_num") Integer a_num, Model model) throws Exception {

		AskVO avo = iservice.selectOne(a_num);

		model.addAttribute("avo", avo);

		return "info/detailViewMaster";
	}

	// 목록 삭제하기
	@GetMapping("delList")
	public String delList(@RequestParam("a_num") Integer a_num) throws Exception {
		
		iservice.delete(a_num);
		
		return "redirect:masterview";
	}

}



