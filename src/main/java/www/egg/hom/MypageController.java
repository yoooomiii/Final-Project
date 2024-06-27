package www.egg.hom;

import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

import www.egg.service.IF_MypageServiece;
import www.egg.util.FileDataUtil;
import www.egg.util.ReviewFileDataUtil;
import www.egg.vo.FavorVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;


@Controller

public class MypageController {

	@Inject
	IF_MypageServiece mpservice;

	@Inject
	ReviewFileDataUtil reviewfiledatautil;
	
	@Inject
	FileDataUtil filedatautil;


	@RequestMapping(value = "mypage", method = RequestMethod.GET)   //로그인시 마이페이지에 정보 띄위기
	public String home(HttpSession session) {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("userphone");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mypage/mypage";
	}




	@RequestMapping(value = "mod", method = RequestMethod.GET)    //수정할떄 모든 정보를 가져와서 수정 , 아이디는 수정 불가
	public String modno(HttpSession session) throws Exception {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("userphone");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mypage/mymod";
	}

	@RequestMapping(value = "msave", method = RequestMethod.POST)   //수정한 정보를 다시 저장 
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



	

	@GetMapping(value="mylist")			//주문내역 불러오기
	public String oderlist(HttpSession session, Model model) throws Exception {
		String userid = (String) session.getAttribute("userid");
		System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력
		
		
	
		if (userid != null) {
			List<MlistVO> mlist = mpservice.orderlist(userid);
			for (MlistVO list : mlist) {
				System.out.println(list);  // 디버그용 로그 출력
			}
			model.addAttribute("mlist", mlist);
		} else {
			System.out.println("아이디 없음");  // 디버그용 로그 출력
		}


		return "mypage/orderlist";
	}
	
	

	
	
	 

	@RequestMapping(value = "write", method = RequestMethod.GET)     //리뷰쓰기 버튼을 누르면 주문번호를 넘겨주고 리뷰작성폼으로 이동
	public String review(@RequestParam("m_num") Integer m_num, Model model,
			@RequestParam("m_name") String m_name) {
		if (m_num == null) {
			System.out.println("m_num값 없음");
		}

		MlistVO mlvo = new MlistVO();
		mlvo.setM_num(m_num);  //m_num 값 가져오기

		model.addAttribute("mlvo", mlvo);
		return "mypage/review";
	}

	@RequestMapping(value = "rwrite", method = RequestMethod.POST)			//리뷰작성해서 저장, 사진파일은 따로 저장
	public String rsave(@ModelAttribute ReviewVO rvo, HttpSession session, MultipartFile[] file, Model model) throws Exception {

		String userid = (String) session.getAttribute("userid");
		rvo.setRe_id(userid);

		// 로그 출력
		System.out.println("User ID: " + userid);

		String[] filename = reviewfiledatautil.fileUpload(file);
		rvo.setFilename(filename);

		// 리뷰 및 파일 저장
		mpservice.rsave(rvo);
		System.out.println("리뷰 및 파일 저장됨");

		return "redirect:/"; 
	}


	@PostMapping(value = "pickcart_insert")			//메뉴에서 찜버튼 클릭시 찜목록 테이블에 저장
	public String pickcart(@ModelAttribute FavorVO fvo,
			@RequestParam("menu_no") int menu_no,
			@RequestParam("menu_name") String menu_name,
			@RequestParam("menu_price") String menu_price,
			HttpSession session, Model model) throws Exception {

		String userid= (String) session.getAttribute("userid"); 
		fvo.setF_id(userid);
		fvo.setF_no(menu_no);
		fvo.setF_menu(menu_name);
		fvo.setF_price(Integer.parseInt(menu_price));
		
		
		mpservice.pickinsert(fvo);
		session.setAttribute("menu_no", menu_no);
		System.out.println("찜 저장됨");
		return "redirect:picklist";
	}
	
	@GetMapping(value="allreview") // 내가 쓴 리뷰만 불러오기 (사진 포함)  
	public String allreviews(HttpSession session, Model model,
			@ModelAttribute MlistVO mlvo) throws Exception {
		String userid = (String) session.getAttribute("userid");	
		
		List<ReviewVO> myreview = mpservice.myreview(userid);
		List<MlistVO> mmm = mpservice.orderlist(userid);
	
		// 각 리뷰에 대해 사진 데이터 가져오기
		List<Map<String, Object>> photolist = new ArrayList<>(); // 사진 데이터를 저장할 리스트를 초기화
		for (ReviewVO review : myreview) { // myreview 리스트에 있는 각 리뷰에 대해 반복
			List<Map<String, Object>> photos = mpservice.getfile(review.getRe_num()); // 현재 리뷰의 re_num에 해당하는 사진 리스트를 가져오기
			for (Map<String, Object> photo : photos) { // 가져온 사진 리스트의 각 사진에 대해 반복
				if (photo.get("filename") != null && !photo.get("filename").toString().trim().isEmpty()) { // filename이 null이 아니고 비어 있지 않은 경우를 확인
					photolist.add(photo); // 조건을 만족하는 사진 데이터를 photolist에 추가
					System.out.println(photolist);
				}
			}
		}
		model.addAttribute("mmm", mmm);
		model.addAttribute("review", myreview); 
		model.addAttribute("photolist", photolist);
		System.out.println("사진 넘겼니?");
		
		return "mypage/myreview";
	}
	
	@GetMapping(value="picklist")
	public String picklist(HttpSession session, Model model) throws Exception {
		String userid = (String) session.getAttribute("userid");
		System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력

		List<FavorVO> picklist = mpservice.picklist(userid);

	
		model.addAttribute("plist", picklist);
		System.out.println("불러와졌나?");
		return "mypage/pick";
	}
	

	@GetMapping(value="pickdelete")
	public String pickdelete(@RequestParam List<String> chkid) throws Exception {
		for(String check :chkid) {
			mpservice.pickdelete(check);
			System.out.println("삭제되었습니당");
		}
		return "redirect:picklist";
		
	}
	
	//남은것 : ajax , 페이징, 체크박스 전체삭제 , 업무일지, 요청명세서  
}


