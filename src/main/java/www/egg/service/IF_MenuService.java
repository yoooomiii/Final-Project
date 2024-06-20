package www.egg.service;


import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;

@Service
public interface IF_MenuService {
	
	public void item_insert(ItemVO ivo) throws Exception;	//장바구니 등록
	
	//------------------------------------------------장바구니

	public void insert(MenuVO mvo) throws Exception;	//메뉴 입력

	public List<MenuVO> menuList() throws Exception;	//메뉴 전체보기

	public void delete(MenuVO mvo) throws Exception;	//메뉴 삭제

	public MenuVO update(MenuVO mvo) throws Exception;	//메뉴 수정

	public MenuVO modno(String no) throws Exception;	//메뉴 정보 넣기

	public List<String> getFilename(String no) throws Exception;	//메뉴 사진 불러오기

}
