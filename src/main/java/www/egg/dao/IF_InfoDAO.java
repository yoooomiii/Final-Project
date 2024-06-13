package www.egg.dao;

import java.util.List;

import www.egg.vo.AskVO;

public interface IF_InfoDAO {

	public void insert(AskVO avo) throws Exception;

	public void delete(Integer num) throws Exception;

	public void update(AskVO avo) throws Exception;

	public AskVO mod(Integer num) throws Exception;

	public List<AskVO> allList() throws Exception;
}
