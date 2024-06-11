package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MenuVO;

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
	public MenuVO modno(String no) throws Exception {	//사진 넣기
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".selectone", no);
	}

	@Override
	public List<String> getFilename(String no) throws Exception {	//사진 불러오기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".getFiles", no);
	}

}
