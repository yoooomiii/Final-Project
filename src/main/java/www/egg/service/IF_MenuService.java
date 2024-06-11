package www.egg.service;

import java.util.List;

import www.egg.vo.MenuVO;

public interface IF_MenuService {
	
	public void insert(MenuVO mvo) throws Exception;	//입력
	
	public List<MenuVO> menuList() throws Exception;	//전체보기
	
	public List<String> getFilename(String no) throws Exception;	//사진 드록
	
	public void delete(MenuVO mvo) throws Exception;	//삭제
	
	public void update(MenuVO mvo) throws Exception;	//수정

}
