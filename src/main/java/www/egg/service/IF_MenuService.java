package www.egg.service;

import org.springframework.stereotype.Service;

import www.egg.vo.MenuVO;

@Service
public interface IF_MenuService {
	
	public void insert(MenuVO mvo) throws Exception; //입력

}
