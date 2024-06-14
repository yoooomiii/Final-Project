package www.egg.service;


import java.util.List;


import org.springframework.stereotype.Service;

import www.egg.vo.MenuVO;
import www.egg.vo.OptionVO;

@Service
public interface IF_MenuService {

	public void option_insert(OptionVO ovo) throws Exception;	//�궗�씠�뱶 �엯�젰

	public List<OptionVO> option_List() throws Exception;	//�궗�씠�뱶 �쟾泥대낫湲�

	public void option_delete(OptionVO ovo) throws Exception;	//�궗�씠�뱶 �궘�젣

	public OptionVO option_update(OptionVO ovo) throws Exception;	//�궗�씠�뱶 �닔�젙

	public OptionVO option_modno(String no) throws Exception;	//�궗�씠�뱶 �젙蹂� �꽔湲�


	public List<String> option_getFilename(String sno) throws Exception;	//사이드 사진 불러오기


	//--------------------------------------------------硫붾돱

	public void insert(MenuVO mvo) throws Exception;	//�엯�젰

	public List<MenuVO> menuList() throws Exception;	//�쟾泥대낫湲�

	public void delete(MenuVO mvo) throws Exception;	//�궘�젣

	public MenuVO update(MenuVO mvo) throws Exception;	//�닔�젙

	public MenuVO modno(String no) throws Exception;	//�젙蹂� �꽔湲�

	public List<String> getFilename(String no) throws Exception;	//�궗吏� 遺덈윭�삤湲�

}
