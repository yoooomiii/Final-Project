package www.egg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.egg.dao.IF_MypageDAO;
import www.egg.vo.MemberVO;

@Service
public class MypageServiceImpl implements IF_MypageService {
    
    @Autowired
    IF_MypageDAO mpdao;

    @Override
    public void insert(MemberVO mvo) throws Exception {
        mpdao.insert(mvo);
    }

    @Override
    public MemberVO modid(String id) throws Exception {
        return mpdao.modid(id);
    }

    @Override
    public void modsave(MemberVO mvo) throws Exception {
        mpdao.modsave(mvo);
    }
}
