
package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MenuDAO;
import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;

@Service
public class MenuServiceImpl implements IF_MenuService {
	
	@Inject
	IF_MenuDAO mdao;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//입력
		// TODO Auto-generated method stub
		mdao.insert(mvo);
		String[] filename = mvo.getFilename();
		for(String fname : filename) {
			mdao.savepot(fname);
		}
	}

	@Override
	public List<MenuVO> menuList() throws Exception {	//전체보기
		// TODO Auto-generated method stub
		return mdao.menuList();
	}

	@Override
	public void delete(MenuVO mvo) throws Exception {	//삭제
		// TODO Auto-generated method stub
		mdao.delete(mvo);
	}

	@Override
	public MenuVO update(MenuVO mvo) throws Exception {	//수정
		return mdao.update(mvo);
	}
	
	@Override
	public MenuVO modno(String no) throws Exception {	//정보 넣기
		// TODO Auto-generated method stub
		return mdao.modno(no);
	}
	
	@Override
	public List<String> getFilename(String sno) throws Exception {	//사진 불러오기
		// TODO Auto-generated method stub
		return mdao.getFilename(sno);
	}

	@Override
	public void item_insert(ItemVO ivo) throws Exception {	//장바구니 등록
		// TODO Auto-generated method stub
		mdao.item_insert(ivo);
	}

	@Override
	public List<MenuVO> sideList() throws Exception {	//사이드 리스트 추력
		// TODO Auto-generated method stub
		return mdao.sideList();
	}

}

