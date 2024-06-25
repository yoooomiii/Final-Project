package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.AnswerVO;
import www.egg.vo.AskVO;
import www.egg.vo.InfojoinVO;
import www.egg.vo.PageVO;

@Repository
public class InfoDAOImpl implements IF_InfoDAO {

	private static String mapperQurey = "www.egg.dao.IF_InfoDAO";

	@Inject
	private SqlSession sql;
	
	// --------------------------------------------- 유저용
	
	@Override
	public void insert(AskVO avo) throws Exception {
		sql.insert(mapperQurey + ".insert", avo);
	}
	
	@Override
	public List<InfojoinVO> allList(String a_id) throws Exception {
		
		return sql.selectList(mapperQurey + ".selectall" , a_id);
	}

	@Override
	public AskVO selectOne(Integer a_num) throws Exception {
				
		return sql.selectOne(mapperQurey + ".selectone", a_num);
	}

	// --------------------------------------------- 관리자용
	
	@Override
	public List<AskVO> allListMa() throws Exception {
		
		return sql.selectList(mapperQurey + ".selectallMa");
	}

	@Override
	public int delete(Integer a_num) throws Exception {
		
		return sql.delete(mapperQurey + ".delete", a_num);
	}

	@Override
	public void insert_re(AnswerVO anvo) throws Exception {
		
		sql.insert(mapperQurey + ".reinsert", anvo);
		
	}

	@Override
	public AnswerVO selectOneMa(Integer a_num) throws Exception {

		return sql.selectOne(mapperQurey + ".selectoneMa", a_num);
		
	}
}
