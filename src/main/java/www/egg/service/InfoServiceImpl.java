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
	public List<AskVO> allList(String a_id) throws Exception{
		return idao.allList(a_id);
	}
	
}
