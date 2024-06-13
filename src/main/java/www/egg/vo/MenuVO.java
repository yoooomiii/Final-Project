package www.egg.vo;

public class MenuVO {	
	
	private String menu_code = null;	 // 음식 고유코드
	private int menu_no = 0;			 // 음식 등록 순서(PK)
	private String menu_name = null;	 // 음식 이름
	private int menu_price = 0;		 // 음식 가격
	private String menu_ex = null;	 // 음식 설명
	private int menu_star = 0;		 // 음식 평점
	private String[] filename = null;	//음식 사진
	
	@Override
	public String toString() {
		return "MenuVO [menu_code=" + menu_code + ", menu_no=" + menu_no + ", menu_name=" + menu_name + ", menu_price="
				+ menu_price + ", menu_ex=" + menu_ex + ", menu_star=" + menu_star + "]";
	}
	public String getMenu_code() {
		return menu_code;
	}
	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public String getMenu_ex() {
		return menu_ex;
	}
	public void setMenu_ex(String menu_ex) {
		this.menu_ex = menu_ex;
	}
	public int getMenu_star() {
		return menu_star;
	}
	public void setMenu_star(int menu_star) {
		this.menu_star = menu_star;
	}
	public String[] getFilename() {
		return filename;
	}
	public void setFilename(String[] filename) {
		this.filename = filename;
	}

}