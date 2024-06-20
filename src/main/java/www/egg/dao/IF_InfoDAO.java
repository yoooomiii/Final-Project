package www.egg.dao;

import java.util.List;

import www.egg.vo.AskVO;
import www.egg.vo.PageVO;


public interface IF_InfoDAO {

	public void insert(AskVO avo) throws Exception;
	
	public List<AskVO> allList(String a_id) throws Exception;
	
	public AskVO selectOne(Integer a_num) throws Exception;
	
}
