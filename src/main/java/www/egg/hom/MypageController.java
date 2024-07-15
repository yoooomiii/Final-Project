package www.egg.hom;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
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
import www.egg.vo.PageVO;
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
	public String oderlist(HttpSession session, Model model,@ModelAttribute PageVO pagevo) throws Exception {
		String userid = (String) session.getAttribute("userid");
		System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력

		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호:" +pagevo.getPage());


		if (userid != null) {
			pagevo.setTotalCount(mpservice.getTotalCount(userid));
			List<MlistVO> mlist = mpservice.orderlist(userid, pagevo);
			System.out.println("시작페이지 번호:" + pagevo.getStartNo());
			System.out.println("끝페이지 번호:" + pagevo.getEndNo());
			for (MlistVO list : mlist) {
				//				System.out.println(list);  // 디버그용 로그 출력
			}
			model.addAttribute("mlist", mlist);
			model.addAttribute("pagevo", pagevo);
		} else {
			System.out.println("아이디 없음");  // 디버그용 로그 출력
		}
		return "mypage/orderlist";
	}


	@GetMapping(value="picklist")
	public String picklist(HttpSession session, Model model,@ModelAttribute PageVO pagevo) throws Exception {
		String userid = (String) session.getAttribute("userid");
		System.out.println("UserID from session: " + userid);  // 디버그용 로그 출력

		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호:" +pagevo.getPage());

		pagevo.setTotalCount(mpservice.getTotalCountPick(userid));

		System.out.println("시작페이지 번호:" + pagevo.getStartNo());
		System.out.println("끝페이지 번호:" + pagevo.getEndNo());

		List<FavorVO> picklist = mpservice.picklist(userid, pagevo);
		model.addAttribute("plist", picklist);
		model.addAttribute("pagevo", pagevo);
		System.out.println("불러와졌나?");	
		return "mypage/pick";
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

		return "redirect:allreview"; 
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
		List<MlistVO> mmm = mpservice.orderlist(userid, null);

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
	
	@GetMapping(value="review_master") // 내가 쓴 리뷰만 불러오기 (사진 포함)  
	public String mreview( Model model,HttpSession session ) throws Exception {
		String userid = (String) session.getAttribute("userid");
		List<ReviewVO> m_review = mpservice.reviewmaster();
		// 각 리뷰에 대해 사진 데이터 가져오기
		List<Map<String, Object>> photolist = new ArrayList<>(); // 사진 데이터를 저장할 리스트를 초기화
		for (ReviewVO review :m_review) { // myreview 리스트에 있는 각 리뷰에 대해 반복
			List<Map<String, Object>> photos = mpservice.getfile(review.getRe_num()); // 현재 리뷰의 re_num에 해당하는 사진 리스트를 가져오기
			for (Map<String, Object> photo : photos) { // 가져온 사진 리스트의 각 사진에 대해 반복
				if (photo.get("filename") != null && !photo.get("filename").toString().trim().isEmpty()) { // filename이 null이 아니고 비어 있지 않은 경우를 확인
					photolist.add(photo); // 조건을 만족하는 사진 데이터를 photolist에 추가
					System.out.println(photolist);
				}
			}
		}
		model.addAttribute("master_review", m_review);
		model.addAttribute("photolist", photolist);
		System.out.println("사진 넘겼니?");

		return "mypage/reviewmaster";
	}




	@GetMapping(value="pickdelete")
	public String pickdelete(@RequestParam List<String> chkid) throws Exception {
		for(String check :chkid) {
			mpservice.pickdelete(check);
			System.out.println("삭제되었습니당");
		}
		return "redirect:picklist";

	}
	

	@GetMapping(value="/exceldown")
	public void exceldown(HttpServletResponse response,HttpSession session) throws Exception {

		String userid = (String) session.getAttribute("userid");
		List<MlistVO> mlist = mpservice.exceldown(userid);

		Workbook wb = new HSSFWorkbook(); //.xls 파일 지원
		Sheet sheet = wb.createSheet("엑셀 다운");
		Row row =null;
		Cell cell =null;
		int rownum =0;

		CellStyle HeadStyle =wb.createCellStyle();  //셀 스타이 설정
		HeadStyle.setBorderTop(BorderStyle.THIN); 	//셀의 선 두께 설정
		HeadStyle.setBorderBottom(BorderStyle.THIN);
		HeadStyle.setBorderLeft(BorderStyle.THIN);
		HeadStyle.setBorderRight(BorderStyle.THIN);

		HeadStyle.setFillForegroundColor(HSSFColorPredefined.LIGHT_CORNFLOWER_BLUE.getIndex()); //셀 배경색 설정
		HeadStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);		// 채우기 적용
		HeadStyle.setAlignment(HorizontalAlignment.CENTER);  //가운데 정렬

		Font headerFont = wb.createFont();
		headerFont.setFontHeightInPoints((short) 12); // 폰트 크기 설정
		headerFont.setBold(true); // 굵게 설정
		HeadStyle.setFont(headerFont); // 폰트를 셀 스타일에 적용

		CellStyle BodyStyle =wb.createCellStyle();
		BodyStyle.setBorderTop(BorderStyle.THIN); 
		BodyStyle.setBorderBottom(BorderStyle.THIN);
		BodyStyle.setBorderLeft(BorderStyle.THIN);
		BodyStyle.setBorderRight(BorderStyle.THIN);

		Font bodyFont = wb.createFont();
		bodyFont.setFontHeightInPoints((short) 12); // 폰트 크기 설정
		BodyStyle.setFont(bodyFont); // 폰트를 셀 스타일에 적용

		int columnWidth1 = 16000; // 원하는 너비로 설정 
		int columnWidth2 = 3000;
		short rowHeight = 500; // 원하는 높이로 설정 

		row = sheet.createRow(rownum++);
		cell =row.createCell(0);
		cell.setCellStyle(HeadStyle); 	//HeadStyle 적용
		cell.setCellValue("결제번호"); //첫번째 컬럼명
		row.setHeight(rowHeight); // 첫 번째 행 높이 설정
		cell =row.createCell(1);
		cell.setCellStyle(HeadStyle);
		cell.setCellValue("메뉴이름"); //두번째 컬럼명
		sheet.setColumnWidth(1, columnWidth1); // 두 번째 컬럼 너비 설정
		cell =row.createCell(2);
		cell.setCellStyle(HeadStyle);
		cell.setCellValue("주문상태"); //세번째 컬럼명
		sheet.setColumnWidth(2, columnWidth2); // 두 번째 컬럼 너비 설정



		for(MlistVO mvo : mlist) {
			row = sheet.createRow(rownum++);
			cell = row.createCell(0);
			cell.setCellStyle(BodyStyle); //데이터 부분에는 BodyStyle 적용
			cell.setCellValue(mvo.getM_num()); //첫번째 열에 주문번호
			row.setHeight(rowHeight); // 데이터 행 높이 설정
			cell = row.createCell(1);
			cell.setCellStyle(BodyStyle); 
			cell.setCellValue(mvo.getM_name()); //두번째 열에 메뉴이름 
			cell = row.createCell(2);
			cell.setCellStyle(BodyStyle);
			cell.setCellValue(mvo.getM_state()); //세번째 열에 주문상태					
		}

		response.setContentType("application/vnd.ms-excel");  //Microsoft Excel파일 형식
		response.setHeader("Content-Disposition", "attachment;filename=mlist.xls");

		wb.write(response.getOutputStream());//엑셀 출력
		wb.close();  //workbook닫기
	}

	
}


