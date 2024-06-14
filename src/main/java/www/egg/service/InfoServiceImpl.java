package www.egg.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_InfoDAO;
import www.egg.vo.AskVO;

@Service
public class InfoServiceImpl implements IF_InfoService {

	@Inject
	IF_InfoDAO idao;

	@Override
	public void insert(AskVO avo) throws Exception {
		idao.insert(avo);
	}

	@Override
	public List<AskVO> allList() throws Exception{
		return idao.allList();
	}

	@Override
	public void delete(Integer num) throws Exception{
		idao.delete(num);
		
	}

	@Override
	public AskVO mod(Integer num) throws Exception {
		return idao.mod(num);
	}

	@Override
	public void update(AskVO avo) throws Exception {
		idao.update(avo);
	}
	
	
}
