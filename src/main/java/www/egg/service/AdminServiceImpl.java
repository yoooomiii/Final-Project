package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_AdminDAO;
import www.egg.dao.IF_LoginDAO;
import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;

@Service
public class AdminServiceImpl implements IF_AdminService {
	
	@Inject
	IF_AdminDAO adao;

	@Override
	public List<Mlist2VO> orderlist() {
		// TODO Auto-generated method stub
		return adao.orderlist();
	}

	


}
