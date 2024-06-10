package www.egg.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import www.egg.vo.MenuVO;

public class MenuDAOImpl implements IF_MenuDAO {
	private static String mapperQuery = "www.egg.dao.IF_MenuDAOImpl";
	
	@Inject
	private SqlSession sqlsession;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//입력
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery+".insert", mvo);
	}

}
