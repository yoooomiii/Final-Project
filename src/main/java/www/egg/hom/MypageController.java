package www.egg.hom;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.egg.service.IF_MypageServiece;
import www.egg.util.ReviewFileDataUtil;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;

//@Controller
public class MypageController {

	@Inject
	IF_MypageServiece mpservice;

	@Inject
	ReviewFileDataUtil reviewfiledatautil;

	@GetMapping(value = "/")
	public String main() {
		return "main";
	}

	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String home(HttpSession session) {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("userphone");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mypage/mypage";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String review() {
		System.out.println("reviews");
		return "mypage/review";
	}

	@RequestMapping(value = "mod", method = RequestMethod.GET)
	public String modno(HttpSession session) throws Exception {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("userphone");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mypage/mymod";
	}

	@RequestMapping(value = "msave", method = RequestMethod.POST)
	public String save(@ModelAttribute MemberVO mvo, HttpSession session) throws Exception {
		mpservice.modsave(mvo);
		System.out.println("저장됨");
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("userphone");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mypage/mypage";
	}


	@RequestMapping(value = "rwrite", method = RequestMethod.POST)
	public String rsave(@ModelAttribute ReviewVO rvo,
			@ModelAttribute MlistVO mlvo, 
			HttpSession session,String re_file, Model model) throws Exception {
		//    	rfilename = reviewfiledatautil.fileUpload(re_file);

		// 파일이 있을 경우에만 처리
		//        if (re_file != null && re_file.length > 0 && !re_file[0].isEmpty()) {
		//            // 파일 이름 배열을 얻습니다.
		//            // 파일 이름 배열을 하나의 문자열로 결합합니다. (예: 파일 이름을 쉼표로 구분)
		////            String reFileStr = String.join(",", filenames);
		//            // ReviewVO 객체에 파일 이름을 설정합니다.
		//            rvo.setRe_file(re_file);
		//        } else {
		//            rvo.setRe_file(null); // 파일이 없을 경우 null로 설정
		//        }
		//
		//        // 세션에서 사용자 ID 가져오기
		System.out.println("please");
		rvo.setRe_file(re_file);
		String userid = (String) session.getAttribute("userid");
		rvo.setRe_id(userid);
//		rvo.setRe_no(nnum);
		// 리뷰 정보를 저장합니다.
		mpservice.rsave(rvo);
//		model.addAttribute("mlvo", mlvo);
		System.out.println(rvo.toString());
		System.out.println("리뷰 저장됨");

		return "redirect:/"; // 실제로 이동할 URL로 변경
	}

	//    @RequestMapping(value = "myreview", method = RequestMethod.GET)   //리뷰 불러오기
	//    public String myreview(HttpSession session,ReviewVO rvo,Model model) throws Exception {
	//    	
	//    	String userid = (String) session.getAttribute("userid");
	//    	System.out.println("here?");
	//    	 System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력
	//
	//    	    if (userid != null) {
	//    	        rvo.setRe_id(userid);
	//    	        List<ReviewVO> list = mpservice.myreview(userid);
	//    	        for (ReviewVO review : list) {
	//    	            System.out.println(review);  // 디버그용 로그 출력
	//    	        }
	//    	        model.addAttribute("rvo", list);
	//    	    } else {
	//    	        System.out.println("UserID is null in session.");  // 디버그용 로그 출력
	//    	    }
	//    	    return "mypage/mypage";
	//    }
	//    	rvo.setRe_id(userid);
	//        List<ReviewVO>list = mpservice.myreview(userid);
	//        model.addAttribute("rvo", list);
	//        System.out.println("here?");
	//        return "mypage/mypage";
	//    }

//	@GetMapping(value="myreview")
//	public String allreview() {
//		return "mypage/myreview";
//
//	}

	@GetMapping(value="allreview")
	public String allreviews(@ModelAttribute MlistVO mlvo, HttpSession session,ReviewVO rvo,Model model) throws Exception {
		String userid = (String) session.getAttribute("userid");
		System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력

		if (userid != null) {
			rvo.setRe_id(userid);
			rvo.setRe_no(mlvo.getM_num());
			List<ReviewVO> list = mpservice.myreview(userid);
			for (ReviewVO review : list) {
				System.out.println(review);  // 디버그용 로그 출력
			}
			model.addAttribute("rvo", list);
		} else {
			System.out.println("아이디 없음");  // 디버그용 로그 출력
		}
		
		return "mypage/myreview";
	}
	
	
	@GetMapping(value="mylist")
	public String oderlist(HttpSession session, Model model,MlistVO mlvo) throws Exception {
		String userid = (String) session.getAttribute("userid");
		System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력

		if (userid != null) {
			mlvo.setM_id(userid);
			List<MlistVO> orderlist = mpservice.orderlist(userid);
			for (MlistVO mlist : orderlist) {
				System.out.println(mlist);  // 디버그용 로그 출력
			}
			model.addAttribute("mlvo", orderlist);
		} else {
			System.out.println("아이디 없음");  // 디버그용 로그 출력
		}
		
		return "mypage/orderlist";
	}
	

}

