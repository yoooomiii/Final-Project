package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MenuDAO;
import www.egg.vo.MenuVO;

@Service
public class MenuServiceImpl {
	

	@Inject
	IF_MenuDAO mdao;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//�엯�젰
		// TODO Auto-generated method stub
		mdao.insert(mvo);
	}

	@Override
	public List<MenuVO> menuList() throws Exception {	//전체보기
		// TODO Auto-generated method stub
		return mdao.menuList();
	}

	@Override
	public List<String> getFilename(String no) throws Exception {	//사진 등록
		// TODO Auto-generated method stub
		return mdao.getFilename(no);
	}

	@Override
	public void delete(MenuVO mvo) throws Exception {	//삭제
		// TODO Auto-generated method stub
		mdao.delete(mvo);
	}

	@Override
	public void update(MenuVO mvo) throws Exception {	//수정
		// TODO Auto-generated method stub
		mdao.update(mvo);
	}

}
