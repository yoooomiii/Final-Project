package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.MenuVO;
import www.egg.vo.OptionVO;

@Service
public interface IF_MenuService {

	public void option_insert(OptionVO ovo) throws Exception;	//사이드 입력

	public List<OptionVO> option_List() throws Exception;	//사이드 전체보기

	public void option_delete(OptionVO ovo) throws Exception;	//사이드 삭제

	public OptionVO option_update(OptionVO ovo) throws Exception;	//사이드 수정

	public OptionVO option_modno(String no) throws Exception;	//사이드 정보 넣기

	public List<String> option_getFilename(String no) throws Exception;	//사이드 사진 불러오기

	//--------------------------------------------------메뉴

	public void insert(MenuVO mvo) throws Exception;	//입력

	public List<MenuVO> menuList() throws Exception;	//전체보기

	public void delete(MenuVO mvo) throws Exception;	//삭제

	public MenuVO update(MenuVO mvo) throws Exception;	//수정

	public MenuVO modno(String no) throws Exception;	//정보 넣기

	public List<String> getFilename(String no) throws Exception;	//사진 불러오기

}
