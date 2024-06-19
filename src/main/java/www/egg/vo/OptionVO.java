package www.egg.vo;

public class OptionVO {		
	
	private int side_no = 0;			// 사이드 음식 고유 번호
	private int menu_no = 0;			// 메인 음식 고유 번호
	
	@Override
	public String toString() {
		return "OptionVO [side_no=" + side_no + ", menu_no=" + menu_no + "]";
	}
	public int getSide_no() {
		return side_no;
	}
	public void setSide_no(int side_no) {
		this.side_no = side_no;
	}
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}

}