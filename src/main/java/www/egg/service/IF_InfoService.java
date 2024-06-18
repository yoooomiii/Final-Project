package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.AskVO;

@Service
public interface IF_InfoService {
	
	public void insert(AskVO avo) throws Exception;
	
	public List<AskVO> allList(String id) throws Exception;

}
