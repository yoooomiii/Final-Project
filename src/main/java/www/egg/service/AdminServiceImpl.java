package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_AdminDAO;
import www.egg.dao.IF_LoginDAO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;

@Service
public class AdminServiceImpl implements IF_AdminService {
	
	@Inject
	IF_AdminDAO adao;

	@Override
	public List<MlistVO> orderlist() {
		// TODO Auto-generated method stub
		return adao.orderlist();
	}

	


}
