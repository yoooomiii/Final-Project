package www.egg.dao;

import java.util.List;

import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;
import www.egg.vo.OptionVO;

public interface IF_MenuDAO {

	public void item_insert(ItemVO ivo) throws Exception;	//장바구니 등록
	
	//---------------------------------------------------장바구니

	public void option_insert(OptionVO ovo) throws Exception;	//�샃�뀡 �엯�젰

	public List<OptionVO> option_List() throws Exception;	//�샃�뀡 �쟾泥대낫湲�

	public void option_delete(OptionVO ovo) throws Exception;	//�샃�뀡 �궘�젣

	public OptionVO option_update(OptionVO ovo) throws Exception;	//�샃�뀡 �닔�젙

	public OptionVO option_modno(String no) throws Exception;	//�샃�뀡 �젙蹂� �꽔湲�

	public List<String> option_getFilename(String sno) throws Exception;	//�샃�뀡 �궗吏� 遺덈윭�삤湲�

	public void option_savepot(String filename) throws Exception;	//�샃�뀡 �궗吏� �뀒�씠釉� ���옣

	//-------------------------------------------------메뉴

	public void insert(MenuVO mvo) throws Exception;	//�엯�젰

	public List<MenuVO> menuList() throws Exception;	//�쟾泥대낫湲�

	public void delete(MenuVO mvo) throws Exception;	//�궘�젣

	public MenuVO update(MenuVO mvo) throws Exception;	//�닔�젙

	public MenuVO modno(String no) throws Exception;	//�젙蹂� �꽔湲�

	public List<String> getFilename(String no) throws Exception;	//�궗吏� 遺덈윭�삤湲�

	public void savepot(String filename) throws Exception;	//�궗吏� �뀒�씠釉� ���옣

}
