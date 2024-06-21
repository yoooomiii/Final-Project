package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.AskVO;
import www.egg.vo.PageVO;

@Service
public interface IF_InfoService {
	
	//--------------------------------------------- 회원용
	
	public void insert(AskVO avo) throws Exception;
	
	public List<AskVO> allList(String a_id) throws Exception;
	
	public AskVO selectOne(Integer a_num) throws Exception;
	
	
	//----------------------------------------------- 관리자용
	
	public List<AskVO> allListMa() throws Exception;
	
	public int delete(Integer a_num) throws Exception; 
}
