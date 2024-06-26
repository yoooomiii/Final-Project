package www.egg.service;


import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;

@Service
public interface IF_MenuService {
	
	public void mlist_insert(MlistVO mvo) throws Exception;	//주문 내역 등록
	
	//------------------------------------------------주문내역
	
	public void payment_delete(PaymentVO pvo) throws Exception;	//결제 삭제
	
	public List<PaymentVO> paymentList() throws Exception;	//결제 전체보기
	
	public void payment_insert(PaymentVO pvo) throws Exception;	//결제 등록
	
	//------------------------------------------------결제
	
	public void item_delete(ItemVO ivo) throws Exception;	//장바구니 삭제
	
	public List<ItemVO> itemList() throws Exception;	//장바구니 전체보기
	
	public void item_insert(ItemVO ivo) throws Exception;	//장바구니 등록
	
	//------------------------------------------------장바구니

	public void insert(MenuVO mvo) throws Exception;	//메뉴 입력

	public List<MenuVO> menuList() throws Exception;	//메뉴 전체보기

	public void delete(MenuVO mvo) throws Exception;	//메뉴 삭제

	public MenuVO update(MenuVO mvo) throws Exception;	//메뉴 수정

	public MenuVO modno(String no) throws Exception;	//메뉴 정보 넣기

	public List<String> getFilename(String no) throws Exception;	//메뉴 사진 불러오기
	
	public List<MenuVO> sideList() throws Exception;	//사이드메뉴만 출력

}
