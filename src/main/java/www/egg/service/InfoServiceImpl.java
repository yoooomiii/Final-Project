package www.egg.service;


import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_InfoDAO;
import www.egg.vo.AnswerVO;
import www.egg.vo.AskVO;
import www.egg.vo.InfojoinVO;
import www.egg.vo.PageVO;

@Service
public class InfoServiceImpl implements IF_InfoService {

	@Inject
	IF_InfoDAO idao;

	// --------------------------------------------- 유저용
	
	@Override
	public void insert(AskVO avo) throws Exception {
		idao.insert(avo);
	}
	
	@Override
	public List<InfojoinVO> allList(String a_id) throws Exception {
		return idao.allList(a_id);
	}

	@Override
	public AskVO selectOne(Integer a_num) throws Exception {
		return idao.selectOne(a_num);
		
	}

	// --------------------------------------------- 관리자용
	
	@Override
	public int delete(Integer a_num) throws Exception {
		
		return idao.delete(a_num);
	}

	@Override
	public void insert_re(AnswerVO anvo) throws Exception {
		
		idao.insert_re(anvo);
	}

	@Override
	public AnswerVO selectOneMa(Integer a_num) throws Exception {

		return idao.selectOneMa(a_num);
	}
	
	@Override
	public List<Map<String, Object>> allListMa(Map<String, Object> paramMap) throws Exception {
		
		return idao.allListMa(paramMap);
	}

	@Override
	public List<InfojoinVO> infoListAll(Map<String, Object> params) throws Exception {
		
		return idao.infoListAll(params);
	}
	
	@Override
	public int getToTalCount() throws Exception {
		
		return idao.getTotalCount();
	}

	@Override
	public void trigger_complete() throws Exception {
		idao.trigger_complete();
		
	}

	@Override
	public List<InfojoinVO> infojoin() throws Exception {
		
		return idao.infojoin();
	}

	@Override
	public List<AnswerVO> answerList() throws Exception {
		
		return idao.answerList();
	}


	



	
	
}
