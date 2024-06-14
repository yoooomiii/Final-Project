package www.egg.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.AskVO;

@Repository
public class InfoDAOImpl implements IF_InfoDAO {

	private static String mapperQurey = "www.egg.dao.IF_InfoDAO";

	SqlSession sql;
	
	@Override
	public void insert(AskVO avo) {
		sql.insert(mapperQurey + ".insert", avo);
	}

	@Override
	public void delete(Integer num) {
		sql.delete(mapperQurey + ".delete", num);
		
	}

	@Override
	public AskVO mod(Integer num) throws Exception {
		return sql.selectOne(mapperQurey + ".selectone", num);
	}

	@Override
	public void update(AskVO avo) throws Exception {
		sql.update(mapperQurey + ".update", avo);
	}
	
	@Override
	public List<AskVO> allList() {
		return sql.selectList(mapperQurey + ".selectall");
	}
}
