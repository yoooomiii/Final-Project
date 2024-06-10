package www.egg.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MenuDAO;
import www.egg.vo.MenuVO;

@Service
public class MenuServiceImpl implements IF_MenuService {
	
	@Inject
	IF_MenuDAO mdao;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//�엯�젰
		// TODO Auto-generated method stub
		mdao.insert(mvo);
	}

}
