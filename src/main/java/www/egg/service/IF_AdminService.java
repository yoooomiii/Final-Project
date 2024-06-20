package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;

@Service
public interface IF_AdminService {
	public List<MlistVO> orderlist();

}
