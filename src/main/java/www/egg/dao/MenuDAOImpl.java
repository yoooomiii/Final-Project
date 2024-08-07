
package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.ItemVO;
import www.egg.vo.MenuVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;


@Repository
public class MenuDAOImpl implements IF_MenuDAO {
	private static String mapperQuery = "www.egg.dao.IF_MenuDAO";

	@Inject
	private SqlSession sqlSession;

	@Override
	public void insert(MenuVO mvo) throws Exception {	//입력
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".insert", mvo);
	}

	@Override
	public List<MenuVO> menuList() throws Exception {	//전체보기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectall");
	}

	@Override
	public void delete(MenuVO mvo) throws Exception {	//삭제
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".delete", mvo);
	}

	@Override
	public MenuVO update(MenuVO mvo) throws Exception {	//수정
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuery+".update", mvo);
		return mvo;
	}

	@Override
	public MenuVO modno(String no) throws Exception {	//정보 넣기
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".selectone", no);
	}

	@Override
	public List<String> getFilename(String no) throws Exception {	//사진 불러오기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".getFiles", no);
	}

	@Override
	public void savepot(String filename) throws Exception {	//사진 테이블 저장
		// TODO Auto-generated method stub
		sqlSession.insert((mapperQuery)+".saveFile",filename);
	}

	@Override
	public List<MenuVO> sideList() throws Exception {	//사이드 리스트 출력
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".sselectall");
	}
	
	//-------------------------------------------장바구니
	
	@Override
	public void item_insert(ItemVO ivo) throws Exception {	//장바구니 등록
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".iinsert", ivo);
	}

	@Override
	public List<ItemVO> itemList() throws Exception {	//장바구니 전체보기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".iselectall");
	}

	@Override
	public void item_delete(ItemVO ivo) throws Exception {	//장바구니 삭제
		// TODO Auto-generated method stub
		System.out.println("dao");
		sqlSession.delete(mapperQuery+".idelete", ivo);
	}
	
	//--------------------------------------------결제

	@Override
	public void payment_delete(PaymentVO pvo) throws Exception {	//결제 삭제
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".pdelete", pvo);
	}

	@Override
	public List<PaymentVO> paymentList() throws Exception {	//결제 전체보기
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".pselectall");
	}

	@Override
	public void payment_insert(PaymentVO pvo) throws Exception {	//결제 등록
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".pinsert", pvo);
	}
	
	//--------------------------------------------주문내역

	@Override
	public void mlist_insert(MlistVO mvo) throws Exception {	//주문내역 등록
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".minsert", mvo);
	}

	@Override
	public List<MenuVO> exceldown(String menu_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery + ".exceldown", menu_no);
	}

}

