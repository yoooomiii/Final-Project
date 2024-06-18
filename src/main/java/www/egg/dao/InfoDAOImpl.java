package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.AskVO;

@Repository
public class InfoDAOImpl implements IF_InfoDAO {

	private static String mapperQurey = "www.egg.dao.IF_InfoDAO";

	@Inject
	private SqlSession sql;
	
	@Override
	public void insert(AskVO avo) {
		sql.insert(mapperQurey + ".insert", avo);
	}
	
	@Override
	public List<AskVO> allList(String a_id) {
		return sql.selectList(mapperQurey + ".selectall" , a_id);
	}
}
