package www.egg.dao;

import java.util.List;

import www.egg.vo.MenuVO;
import www.egg.vo.OptionVO;

public interface IF_MenuDAO {


	public void option_insert(OptionVO ovo) throws Exception;	//옵션 입력

	public List<OptionVO> option_List() throws Exception;	//옵션 전체보기

	public void option_delete(OptionVO ovo) throws Exception;	//옵션 삭제

	public OptionVO option_update(OptionVO ovo) throws Exception;	//옵션 수정

	public OptionVO option_modno(String no) throws Exception;	//옵션 정보 넣기

	public List<String> option_getFilename(String no) throws Exception;	//옵션 사진 불러오기

	public void option_savepot(String filename) throws Exception;	//옵션 사진 테이블 저장

	//-------------------------------------------------메뉴

	public void insert(MenuVO mvo) throws Exception;	//입력

	public List<MenuVO> menuList() throws Exception;	//전체보기

	public void delete(MenuVO mvo) throws Exception;	//삭제

	public MenuVO update(MenuVO mvo) throws Exception;	//수정

	public MenuVO modno(String no) throws Exception;	//정보 넣기

	public List<String> getFilename(String no) throws Exception;	//사진 불러오기

	public void savepot(String filename) throws Exception;	//사진 테이블 저장


}
