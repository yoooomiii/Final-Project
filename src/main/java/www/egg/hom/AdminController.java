package www.egg.hom;

import java.util.HashMap;
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
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;
import www.egg.vo.PageVO;
import www.egg.service.IF_AdminService;
import www.egg.service.IF_LoginService;

@Controller
public class AdminController {
	@Inject
	IF_LoginService lservice;
	@Inject
	IF_AdminService aservice;
	
	@GetMapping("adminEnter") // 관리자 페이지 
	public String adminEnter(HttpSession session) throws Exception {
		return "admin/adminMain";
	}
	@GetMapping("adminMView") // 회원 관리 페이지 
	public String adminMember(Model model, @ModelAttribute PageVO pagevo) throws Exception {
		MemberVO mvo = null;
		if(pagevo.getPage()==null) { // 페이지 요청 정보 없을 시 기본 셋팅 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(lservice.getTotalCount(mvo)); // 총튜플수 설정 
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		// pagevo.prt();
		
		List<MemberVO> mlist = lservice.memberlist(pagevo);
		model.addAttribute("pagevo", pagevo);
		model.addAttribute("members", mlist);
		return "admin/adminMember";
	}
	@RequestMapping(value = "adminMSearch", method = RequestMethod.GET) // 회원 검색 요청 
	public String adminMSearch( Model model, @ModelAttribute MemberVO mvo, @RequestParam("sword") String sw,
			 @RequestParam("city") String city,  @RequestParam("county") String county,
			 @ModelAttribute PageVO pagevo
			) throws Exception {
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(lservice.getTotalCount(mvo));
		pagevo.setStartNo(pagevo.getStartNo()-1); // 
		pagevo.prt();
		
		// 맵 생성
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		// vo 세팅 
		if(county.equals("전체")) {
			mvo.setAddress(city);
			System.out.println("도시 set: "+mvo.getAddress());
		}else {
			String readdress = city+" "+county;
			mvo.setAddress(readdress);
			System.out.println("도시 set: "+mvo.getAddress());
		}
		
		List<MemberVO> mlist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무 
			spaging.put("membervo", mvo);
			mlist = lservice.memberSearchPaging(spaging);
			pagevo.setTotalCount(lservice.getTotalCount(mvo));
		}else {
			mvo.setId(sw);
			spaging.put("membervo", mvo);
			mlist = lservice.memberSearchPaging(spaging);
			pagevo.setTotalCount(lservice.getTotalCount(mvo));
		}
		
		// System.out.println("전체 튜플 수 after: "+pagevo.getTotalCount());
		// System.out.println("controller mlist길이: "+mlist.size());
		model.addAttribute("pagevo", pagevo);
		model.addAttribute("members", mlist);
		model.addAttribute("sword", sw); // 클라가 요청했던 검색조건 기억
		model.addAttribute("city", city);
		model.addAttribute("county", county);
		return "admin/adminMember";
	}
	@RequestMapping(value = "adminMDelete", method = RequestMethod.GET) // 회원 삭제 요청
	public String adminMDelete(@RequestParam List<String> chkid,  Model model) throws Exception {
		for (String c: chkid) {
			lservice.quiteAccount(c);
		}
		return  "redirect:adminMView";
	}
	@RequestMapping(value = "adminMUpform", method = RequestMethod.GET) // 회원 정보 수정 
	public String adminMUpform(@RequestParam("id") String id,  Model model) throws Exception {
		MemberVO mvo =  lservice.signIn(id); 
		model.addAttribute("mvo", mvo);
		return "admin/adminMUpform";
	}
	@RequestMapping(value = "adminMUp", method = RequestMethod.POST)
	public String adminMUdate(@ModelAttribute MemberVO mvo) throws Exception { // 회원 정보 수정 요청 
		lservice.modMaster(mvo);
		return "redirect:adminMView";
	}
	@RequestMapping(value = "adminOView", method = RequestMethod.GET) // 주문 관리 페이지 
	public String adminOView(Model model , @ModelAttribute PageVO pagevo) throws Exception {
		MlistVO ovo = null;
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		// System.out.println("현재 페이지 번호: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountO(ovo));
		pagevo.setStartNo(pagevo.getStartNo()-1); 
		// pagevo.prt();
		
		List<MlistVO> olist = aservice.orderlist(pagevo);
		model.addAttribute("orders", olist);
		model.addAttribute("pagevo", pagevo);
		return "admin/adminMlist";
	}
	@RequestMapping(value = "adminDView", method = RequestMethod.GET) // 배달 관리 페이지 
	public String adminDView(Model model , @ModelAttribute PageVO pagevo) throws Exception {
		DeliveryVO dvo= null;
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountD(dvo)); // 총 튜플수 
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		// pagevo.prt();
		
		List<DeliveryVO> dlist = aservice.deliverylist(pagevo);
		model.addAttribute("deliverys", dlist);
		model.addAttribute("pagevo", pagevo);
		return "admin/adminDelivery";
	}
	@RequestMapping(value = "adminODelete", method = RequestMethod.GET)
	public String adminODelete(@RequestParam List<String> chkid) throws Exception { // 주문 삭제 요청 
		for (String c: chkid) {
			aservice.deleteOdernum(c);
		}
		return  "redirect:adminOView";
	}
	@RequestMapping(value = "adminOUpform", method = RequestMethod.GET) // 주문 수정 페이지 
	public String adminOUpform(@RequestParam("m_num") String m_num,  Model model) throws Exception {
		MlistVO ovo = aservice.pickOrdernum(m_num);
		model.addAttribute("ovo", ovo);
		return "admin/adminOUpform";
	}
	@RequestMapping(value = "adminOUp", method = RequestMethod.POST)
	public String adminOUdate(@ModelAttribute MlistVO ovo) throws Exception { // 주문 수정 요청 
		aservice.modOrderstate(ovo);
		return "redirect:adminOView";
	}
	@RequestMapping(value = "adminODetail", method = RequestMethod.GET) // 주문 상세 페이지 
	public String adminODetail(@RequestParam("m_num") String m_num ,  Model model) throws Exception {
		PaymentVO pvo = aservice.pickPaymentnum(m_num);
		model.addAttribute("pvo", pvo);
		
		return "admin/adminOPayment";
	}
	@RequestMapping(value = "adminODelivery", method = RequestMethod.GET) // 배달 상세 페이지 
	public String adminODelivery(@RequestParam("m_num") String m_num ,  Model model) throws Exception {
		DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("dvo", dvo);
		model.addAttribute("ordernum", m_num);
		return "admin/adminODelivery";
	}
	@RequestMapping(value = "adminDUpform", method = RequestMethod.GET) // 배달 수정 페이지 
	public String adminDUpform(@RequestParam("m_num") String m_num,  Model model) throws Exception {
		DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("dvo", dvo);
		return "admin/adminDUpform";
	}
	@RequestMapping(value = "adminDUp", method = RequestMethod.POST) // 배달 수정 요청 
	public String adminDUdate(@ModelAttribute DeliveryVO dvo,  Model model) throws Exception {
		String dlvtime = dvo.getD_time()+"분";
		dvo.setD_time(dlvtime);
		aservice.modDelivery(dvo);
		
		DeliveryVO modied_dvo = aservice.pickDeliverynum(dvo.getD_no()+"");
		model.addAttribute("dvo", modied_dvo);
		return "admin/adminODelivery";
	}
	@RequestMapping(value = "adminOSearch", method = RequestMethod.GET) // 주문 검색 요청 
	public String adminOSearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("m_state") String m_state, @ModelAttribute MlistVO ovo, 
			 PageVO pagevo) throws Exception {		
		if(pagevo.getPage()==null) { 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountO(ovo)); // 그냥 모든 튜플수 적용
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		
		// 맵 생성
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		// vo 세팅 
		List<MlistVO> olist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무
			if(m_state==null || m_state.equals("")) { // 검색어도 없고 조건도 없으면
				System.out.println("어드민콘트롤러 OVO(all null): "+ovo.toString());
				olist = aservice.orderlist(pagevo); // DB에서 주문내역
			}else {
				ovo.setM_state(m_state); 
				spaging.put("ordervo", ovo); 
				System.out.println("어드민콘트롤러 OVO(sw null): "+ovo.toString());
				olist = aservice.searchOrderPaging(spaging); // DB에서 주문내역
				pagevo.setTotalCount(aservice.getTotalCountO(ovo)); // 검색결과 튜플개수만큼만 적용
			}
		}else if(m_state==null || m_state.equals("")) {
				Integer m_num = Integer.parseInt(sw);
				ovo.setM_num(m_num);
				spaging.put("ordervo", ovo); 
				System.out.println("어드민콘트롤러 OVO(sw ok): "+ovo.toString());
				olist = aservice.searchOrderPaging(spaging); // DB에서 주문내역
				pagevo.setTotalCount(aservice.getTotalCountO(ovo)); // 검색결과 튜플개수만큼만 적용 
		}
		model.addAttribute("orders", olist); 
		model.addAttribute("pagevo", pagevo); 
		model.addAttribute("m_state", m_state); // 처음에 검색 요청했던 정보 제출 
		model.addAttribute("sword", sw);
		return "admin/adminMlist";
	}
	@RequestMapping(value = "adminDSearch", method = RequestMethod.GET) // 배달 검색 요청 
	public String adminDsearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("d_check") String d_check, 
			@RequestParam("d_num") String d_num,
			@ModelAttribute DeliveryVO dvo
			, PageVO pagevo) throws Exception {
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		pagevo.setTotalCount(aservice.getTotalCountD(dvo)); 
		pagevo.setStartNo(pagevo.getStartNo()-1); 
		// pagevo.prt();
	
		// 맵 생성
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		// vo 세팅
		System.out.println("어드민콘트롤러 sw: "+sw);
		System.out.println("어드민콘트롤러 d_check: "+d_check);
		List<DeliveryVO> dlist = null;
		
		if(d_num==null || d_num.equals("")) { // rider번호가 없다면
			if(sw==null || sw.equals("")) { // 검색어 유무
				if(d_check==null || d_check.equals("")) { // 검색어도 없고 검색조건도 없으면
					System.out.println("어드민콘트롤러 DVO(all null): "+dvo.toString());
					dlist = aservice.deliverylist(pagevo); 
				}else {
					dvo.setD_check(d_check);
					spaging.put("deliveryvo", dvo);
					// System.out.println("어드민콘트롤러 dvo(sw null): "+dvo.toString());
					dlist = aservice.searchDeliveryPaging(spaging);
					pagevo.setTotalCount(aservice.getTotalCountD(dvo)); 
				}
			}else if(d_check==null || d_check.equals("")){ // 검색조건 유무
				Integer d_no = Integer.parseInt(sw);
				dvo.setD_no(d_no);
				spaging.put("deliveryvo", dvo);
				// System.out.println("어드민콘트롤러 dvo(sw ok): "+dvo.toString());
				dlist = aservice.searchDeliveryPaging(spaging); 
				pagevo.setTotalCount(aservice.getTotalCountD(dvo)); 
			}
		}else { // rider번호가 있다면
			Integer set_dnum = Integer.parseInt(d_num);
			dvo.setD_num(set_dnum);
			spaging.put("deliveryvo", dvo);
			dlist = aservice.searchDeliveryPaging(spaging);
			pagevo.setTotalCount(aservice.getTotalCountD(dvo)); // 검색결과 튜플개수만큼만 적용 
		}
		model.addAttribute("deliverys", dlist); 
		model.addAttribute("pagevo", pagevo); 
		model.addAttribute("d_no", sw); // 처음에 검색 요청했던 정보 제출 
		model.addAttribute("d_check", dvo.getD_check());
		return "admin/adminDelivery";
	}
	@GetMapping("adminDDelete") // 배달 정보 삭제 요청 
	public String adminDDelete(@RequestParam List<String> chkid) throws Exception {
		for(String c: chkid) {
			aservice.deleteDeliverynum(c);
		}
		return "redirect:adminDView";
	}
	@RequestMapping(value = "adminDSpform", method = RequestMethod.GET) // 배달 저장 페이지 
	public String adminDSpform(@RequestParam("m_num") String m_num,  Model model) throws Exception {
		model.addAttribute("ordernum", m_num);
		return "admin/adminDSform";
	}
	@RequestMapping(value = "adminDSave", method = RequestMethod.GET) // 배달건 등록 요청 
	public String adminDSpform(@ModelAttribute DeliveryVO dvo, Model model) throws Exception {
		String dlvtime = dvo.getD_time()+"분";
		dvo.setD_time(dlvtime);
		aservice.insertDelivery(dvo); 		
		DeliveryVO modied_dvo = aservice.pickDeliverynum(dvo.getD_no()+""); // 등록한 배달건 
		
		String m_num = Integer.toString(dvo.getD_no());
		model.addAttribute("dvo", modied_dvo);
		model.addAttribute("ordernum",m_num );
		return "admin/adminODelivery";
	}
	
	// --------------(excel 다운)---->
	@RequestMapping(value = "/excelDown")
	public void excelDown(HttpServletResponse response) throws Exception {
		
		// DB 에서 데이터 리스트 가져오기 
		List<MemberVO> memberlist = aservice.allMembers();
		
		// HSSFWorkbook
		Workbook wb = new HSSFWorkbook();
		Sheet sheet = wb.createSheet("멤버목록");
		Row row = null;
		Cell cell = null;
		int rowNo = 0;

		// 스타일 설정 부분 
		CellStyle headStyle = wb.createCellStyle();
		// "
		headStyle.setBorderTop(BorderStyle.THIN);
		headStyle.setBorderBottom(BorderStyle.THIN);
		headStyle.setBorderLeft(BorderStyle.THIN);
		headStyle.setBorderRight(BorderStyle.THIN);
		// "
		headStyle.setFillForegroundColor(HSSFColorPredefined.WHITE.getIndex());
		headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		// "
		headStyle.setAlignment(HorizontalAlignment.CENTER);
		
		// "
		CellStyle bodyStyle = wb.createCellStyle();
		bodyStyle.setBorderTop(BorderStyle.THIN);
		bodyStyle.setBorderBottom(BorderStyle.THIN);
		bodyStyle.setBorderLeft(BorderStyle.THIN);
		bodyStyle.setBorderRight(BorderStyle.THIN);

		// header 만들기 
		row = sheet.createRow(rowNo++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("회원ID");
		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("회원명");
		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("전화번호");
		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("이메일");
		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("주소");
		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("권한");
		
		// body(value값 데이터) 만들기 
		for(MemberVO vo : memberlist) { // 가져온 list 
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getId());
			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getName());
			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getPhone());
			cell = row.createCell(3);
			cell.setCellStyle(headStyle);
			cell.setCellValue(vo.getEmail());
			cell = row.createCell(4);
			cell.setCellStyle(headStyle);
			cell.setCellValue(vo.getAddress());
			cell = row.createCell(5);
			cell.setCellStyle(headStyle);
			cell.setCellValue(vo.getMaster());
		}
		
		// 컨텐츠 타입과 파일명 지정 
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=goldenEgg_member.xls");
		
		wb.write(response.getOutputStream());
		wb.close();
	}
}
