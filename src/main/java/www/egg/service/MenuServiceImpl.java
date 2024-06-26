
package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MenuDAO;
import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;

@Service
public class MenuServiceImpl implements IF_MenuService {
	
	@Inject
	IF_MenuDAO mdao;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//입력
		// TODO Auto-generated method stub
		mdao.insert(mvo);
		String[] filename = mvo.getFilename();
		for(String fname : filename) {
			mdao.savepot(fname);
		}
	}

	@Override
	public List<MenuVO> menuList() throws Exception {	//전체보기
		// TODO Auto-generated method stub
		return mdao.menuList();
	}

	@Override
	public void delete(MenuVO mvo) throws Exception {	//삭제
		// TODO Auto-generated method stub
		mdao.delete(mvo);
	}

	@Override
	public MenuVO update(MenuVO mvo) throws Exception {	//수정
		return mdao.update(mvo);
	}
	
	@Override
	public MenuVO modno(String no) throws Exception {	//정보 넣기
		// TODO Auto-generated method stub
		return mdao.modno(no);
	}
	
	@Override
	public List<String> getFilename(String sno) throws Exception {	//사진 불러오기
		// TODO Auto-generated method stub
		return mdao.getFilename(sno);
	}

	@Override
	public List<MenuVO> sideList() throws Exception {	//사이드 리스트 추력
		// TODO Auto-generated method stub
		return mdao.sideList();
	}

	//------------------------------------------장바구니
	
	@Override
	public void item_insert(ItemVO ivo) throws Exception {	//장바구니 등록
		// TODO Auto-generated method stub
		mdao.item_insert(ivo);
	}
	
	@Override
	public List<ItemVO> itemList() throws Exception {	//장바구니 전체보기
		// TODO Auto-generated method stub
		return mdao.itemList();
	}

	@Override
	public void item_delete(ItemVO ivo) throws Exception {	//장바구니 삭제
		// TODO Auto-generated method stub
		mdao.item_delete(ivo);
	}

	//------------------------------------------결제
	
	@Override
	public void payment_delete(PaymentVO pvo) throws Exception {	//결제 삭제
		// TODO Auto-generated method stub
		mdao.payment_delete(pvo);
	}

	@Override
	public List<PaymentVO> paymentList() throws Exception {	//결제 전체보기
		// TODO Auto-generated method stub
		return mdao.paymentList();
	}

	@Override
	public void payment_insert(PaymentVO pvo) throws Exception {	//결제 등록
		// TODO Auto-generated method stub
		mdao.payment_insert(pvo);
	}
	
	//---------------------------------------------주문내역

	@Override
	public void mlist_insert(MlistVO mvo) throws Exception {	//주문내역 등록
		// TODO Auto-generated method stub
		mdao.mlist_insert(mvo);
	}

}

