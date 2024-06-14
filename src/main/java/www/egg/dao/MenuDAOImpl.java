package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MenuVO;
import www.egg.vo.OptionVO;

@Repository
public class MenuDAOImpl implements IF_MenuDAO {
	private static String mapperQuery = "www.egg.dao.IF_MenuDAO";

	@Inject
	private SqlSession sqlSession;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//입력
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".insert", mvo);
	}

	@Override
	public List<MenuVO> menuList() throws Exception {	//전체보기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectall");
	}

	@Override
	public void delete(MenuVO mvo) throws Exception {	//삭제
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".delete", mvo);
	}

	@Override
	public MenuVO update(MenuVO mvo) throws Exception {	//수정
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuery+".update", mvo);
		return mvo;
	}

	@Override
	public MenuVO modno(String no) throws Exception {	//정보 넣기
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".selectone", no);
	}

	@Override
	public List<String> getFilename(String no) throws Exception {	//사진 불러오기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".getFiles", no);
	}

	@Override
	public void savepot(String filename) throws Exception {	//사진 테이블 저장
		// TODO Auto-generated method stub
		sqlSession.insert((mapperQuery)+".saveFile",filename);
	}
	
	//-------------------------------------------------------------메뉴

	@Override
	public void option_insert(OptionVO ovo) throws Exception {	//사이드 메뉴 등록
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".sinsert", ovo);
	}

	@Override
	public List<OptionVO> option_List() throws Exception {	//사이드 전체보기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".sselectall");
	}

	@Override
	public void option_delete(OptionVO ovo) throws Exception {	//사이드 삭제
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".sdelete", ovo);
	}

	@Override
	public OptionVO option_update(OptionVO ovo) throws Exception {	//사이드 수정
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuery+".supdate",ovo);
		return ovo;
	}

	@Override
	public OptionVO option_modno(String no) throws Exception {	//사이드 정보 넣기
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".sselectone", no);
	}

	@Override
	public List<String> option_getFilename(String sno) throws Exception {	//옵션 사진 불러오기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".sgetFiles", sno);
	}

	@Override
	public void option_savepot(String filename) throws Exception {		//옵션 사진 테이블 저장
		// TODO Auto-generated method stub
		sqlSession.insert((mapperQuery)+".saveFile",filename);
	}

}
