package www.egg.vo;

public class ItemVO {
	
	private Integer i_num = 0;     // 아이템 번호
	private String i_id = null;		//회원 아이디
	private int menu_no =0;  	// 메뉴 코드
	private int menu_no2 =0;   	// 사이드 코드1
	private int menu_no3 =0;        // 사이드 코드2
	private int menu_no4 =0;        // 사이드 코드3
	private String menu_name = null;	//선택한 메뉴 이름
	private int i_price =0;        // 메뉴 주문 금액
	
	@Override
	public String toString() {
		return "ItemVO [i_num=" + i_num + ", i_id=" + i_id + ", menu_no=" + menu_no + ", menu_no2=" + menu_no2
				+ ", menu_no3=" + menu_no3 + ", menu_no4=" + menu_no4 + ", menu_name=" + menu_name + ", i_price="
				+ i_price + "]";
	}
	public Integer getI_num() {
		return i_num;
	}
	public void setI_num(Integer i_num) {
		this.i_num = i_num;
	}
	public String getI_id() {
		return i_id;
	}
	public void setI_id(String i_id) {
		this.i_id = i_id;
	}
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	public int getMenu_no2() {
		return menu_no2;
	}
	public void setMenu_no2(int menu_no2) {
		this.menu_no2 = menu_no2;
	}
	public int getMenu_no3() {
		return menu_no3;
	}
	public void setMenu_no3(int menu_no3) {
		this.menu_no3 = menu_no3;
	}
	public int getMenu_no4() {
		return menu_no4;
	}
	public void setMenu_no4(int menu_no4) {
		this.menu_no4 = menu_no4;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getI_price() {
		return i_price;
	}
	public void setI_price(int i_price) {
		this.i_price = i_price;
	}
	
}
