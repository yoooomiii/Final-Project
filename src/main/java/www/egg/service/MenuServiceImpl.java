
package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MenuDAO;
import www.egg.vo.MenuVO;
import www.egg.vo.OptionVO;

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
	
	//--------------------------------------------------------------메뉴
	
	@Override
	public void option_insert(OptionVO ovo) throws Exception {		//사이드 등록
		// TODO Auto-generated method stub
		mdao.option_insert(ovo);
		String[] filename = ovo.getFilename();
		for(String fname : filename) {
			mdao.option_savepot(fname);
		}
	}

	@Override
	public List<OptionVO> option_List() throws Exception {		//사이드 전체보기
		// TODO Auto-generated method stub
		return mdao.option_List();
	}

	@Override
	public void option_delete(OptionVO ovo) throws Exception {		//사이드 삭제
		// TODO Auto-generated method stub
		mdao.option_delete(ovo);
	}

	@Override
	public OptionVO option_update(OptionVO ovo) throws Exception {		//사이드 수정
		// TODO Auto-generated method stub
		return mdao.option_update(ovo);
	}

	@Override
	public OptionVO option_modno(String no) throws Exception {		//사이드 정보 넣기
		// TODO Auto-generated method stub
		return mdao.option_modno(no);
	}

	@Override
	public List<String> option_getFilename(String no) throws Exception {	//사이드 사진 불러오기
		// TODO Auto-generated method stub
		return mdao.option_getFilename(no);
	}

}

