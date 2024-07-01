package www.egg.hom;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;

import www.egg.service.IF_InfoService;
import www.egg.vo.AnswerVO;
import www.egg.vo.AskVO;
import www.egg.vo.InfojoinVO;
import www.egg.vo.PageVO;


@Controller
public class InfoController {

	@Inject
	IF_InfoService iservice;
	
	// 고객센터 첫 페이지 호출 
	@RequestMapping(value="infomain", method=RequestMethod.GET)
	public String infomain (Model model) throws Exception {

		return "info/infomain";
	}

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
		System.out.println(avo.toString());

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
	public String allList(InfojoinVO invo, AskVO askVO, HttpSession session, 
			Model model) throws Exception {

		String id = (String) session.getAttribute("userid");
		askVO.setA_id(id);

		List<InfojoinVO> askList = iservice.allList(id);

		model.addAttribute("allListitems", askList);

		return "info/infoList";
	}
	
	// FAQ 페이지 호출
	@RequestMapping(value="faqpage", method=RequestMethod.GET)
	public String faqpage (Model model) throws Exception {

		return "info/faq";
	}

	//---------------------------------------------- 관리자

	// 문의 게시판 전체 목록 조회하기
	@GetMapping("masterview")
	public String allListMarter(Model model, @ModelAttribute PageVO pvo) throws Exception {

		if(pvo.getPage()==null) {
			pvo.setPage(1);
		}
		pvo.setTotalCount(iservice.getToTalCount());
		
		int startNo = (pvo.getPage()- 1) * pvo.getPerPageNum() + 1;
		int endNo = pvo.getPerPageNum();
		
		
		Map<String, Object> params = new HashMap<>();
		params.put("startNo", startNo);
		params.put("endNo", endNo);
		
		List<InfojoinVO> infoList = iservice.infoListAll(params);
		
		model.addAttribute("allListitems", infoList);
		model.addAttribute("pvo", pvo);
		pvo.prt();
		
		System.out.println(infoList.size());

		return "info/infoListMaster";
	}

	// 문의 글 상세 보기
	@GetMapping("detailViewMa")
	public String detailViewMa(@RequestParam("a_num") Integer a_num, Model model) throws Exception {

		AskVO avo = iservice.selectOne(a_num);

		model.addAttribute("avo", avo);

		return "info/detailViewMaster";
	}

	// 문의 목록 삭제하기
	@GetMapping("delList")
	public String delList(@RequestParam("a_num") Integer a_num) throws Exception {

		iservice.delete(a_num);

		return "redirect:masterview";
	}

	// 문의 답변 등록 page 호출
	@GetMapping("replyPage")
	public String replyPage(@RequestParam("a_num") Integer a_num, Model model) throws Exception {

		AskVO avo = iservice.selectOne(a_num);

		model.addAttribute("avo", avo);

		return "info/replyPage";
	}

	// 문의 답변 등록하기
	@PostMapping("replySave")
	public String replySave(AnswerVO anvo, Model model) throws Exception {

		iservice.insert_re(anvo);

		System.out.println(anvo.toString());

		return "redirect:masterview";
	}
	
	// 답변 등록 리스트
	@GetMapping("answerList")
	public String answerList(AnswerVO anvo,	Model model) throws Exception {

		List<AnswerVO> answerList = iservice.answerList();

		model.addAttribute("allListitems", answerList);

		return "info/answerList";
	}
	
	// 답변 등록 처리하기 (trigger)
	@PostMapping("complete")
	@ResponseBody
	public String complete_answer() throws Exception {
		
		iservice.trigger_complete();
		
		return "redirect:infoList";
	}
	
	// join table 확인용
	@GetMapping("jointable")
	public String join(Model model) throws Exception {
		
		List<InfojoinVO> joinList = iservice.infojoin();

		model.addAttribute("allListitems", joinList);
		
		System.out.println(joinList.size());
		
		return "info/join";
	}

}



