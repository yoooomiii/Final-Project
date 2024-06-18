package www.egg.hom;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	ReviewFileDataUtil reviewfileuploadutil;

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
	public String modno(HttpSession session) throws Exception  {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("userphone");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mypage/mymod";
	}

	@RequestMapping(value = "msave", method = RequestMethod.POST)
	public String save(@ModelAttribute MemberVO mvo, HttpSession session) throws Exception  {
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
			HttpSession session,
			@RequestParam("file1") MultipartFile file1,
			@RequestParam("file2") MultipartFile file2) throws Exception {

		System.out.println("여기는?");

		// 세션에서 사용자 ID 가져오기
		String userid = (String) session.getAttribute("userid");
		rvo.setId(userid);
		rvo.setNo(mlvo.getNum());

		// 파일 처리
		MultipartFile[] files = {file1, file2};
		try {
            String[] filenames = reviewfileuploadutil.uploadFiles(files);
            if (filenames.length > 0) {
                rvo.setFile1(filenames.length > 0 ? "/resources/img/" + filenames[0] : null);
                rvo.setFile2(filenames.length > 1 ? "/resources/img/" + filenames[1] : null);
            }
        } catch (IOException e) {
            // 파일 업로드 중 예외 처리
            e.printStackTrace();
            return "errorPage"; // 에러 페이지로 리다이렉트하거나 에러 메시지 처리
        }

		
		mpservice.rsave(rvo);
		System.out.println(rvo.toString());
		System.out.println("리뷰 저장됨");

		
		return null; //아직 확인중이라  디비에 연결해서 적용해보기
	}
}
