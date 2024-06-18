package www.egg.hom;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
                        HttpSession session, MultipartFile[] re_file) throws Exception {
        // 파일이 있을 경우에만 처리
        if (re_file != null && re_file.length > 0 && !re_file[0].isEmpty()) {
            // 파일 이름 배열을 얻습니다.
            String[] filenames = reviewfiledatautil.fileUpload(re_file);
            // 파일 이름 배열을 하나의 문자열로 결합합니다. (예: 파일 이름을 쉼표로 구분)
            String reFileStr = String.join(",", filenames);
            // ReviewVO 객체에 파일 이름을 설정합니다.
            rvo.setRe_file(reFileStr);
        } else {
            rvo.setRe_file(null); // 파일이 없을 경우 null로 설정
        }

        // 세션에서 사용자 ID 가져오기
        String userid = (String) session.getAttribute("userid");
        if (userid != null) {
            rvo.setRe_id(userid);
        }

        rvo.setRe_no(mlvo.getNum());
        // 리뷰 정보를 저장합니다.
        mpservice.rsave(rvo);
        System.out.println(rvo.toString());
        System.out.println("리뷰 저장됨");

        return "redirect:/"; // 실제로 이동할 URL로 변경
    }
}