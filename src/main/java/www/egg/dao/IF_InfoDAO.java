package www.egg.dao;

import java.util.List;
import java.util.Map;

import www.egg.vo.AnswerVO;
import www.egg.vo.AskVO;
import www.egg.vo.InfojoinVO;
import www.egg.vo.PageVO;


public interface IF_InfoDAO {
	
	//--------------------------------------------- 회원용

	public void insert(AskVO avo) throws Exception;
	
	public List<InfojoinVO> allList(String a_id) throws Exception;
	
	public AskVO selectOne(Integer a_num) throws Exception;
	
	//----------------------------------------------- 관리자용
	
	public List<Map<String, Object>> allListMa(Map<String, Object> paramMap) throws Exception;
	
	public int delete(Integer a_num) throws Exception;
	
	public void insert_re(AnswerVO anvo) throws Exception;
	
	public AnswerVO selectOneMa(Integer a_num) throws Exception;
	
	public int getTotalCount() throws Exception;
}
