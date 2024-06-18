package www.egg.dao;

import java.util.List;

import www.egg.vo.AskVO;

public interface IF_InfoDAO {

	public void insert(AskVO avo) throws Exception;

	public List<AskVO> allList(String a_id) throws Exception;
}
