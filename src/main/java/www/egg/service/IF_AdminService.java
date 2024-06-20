package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;

@Service
public interface IF_AdminService {
	public List<Mlist2VO> orderlist();
	public void deleteOdernum(String m_num);
	public Mlist2VO pickOrdernum(String m_num);
	public void modOrderstate(Mlist2VO ovo);

}
