package www.egg.vo;

import java.util.Arrays;

public class FavorVO {

	private Integer f_num =0;     
	private Integer f_no =0; 
	private String f_id = null;    
	private String f_menu = null;   
	private Integer f_price =0;
	private String[] filename;
	
	 public Integer getF_num() {
		return f_num;
	}

	public void setF_num(Integer f_num) {
		this.f_num = f_num;
	}

	public Integer getF_no() {
		return f_no;
	}

	public void setF_no(Integer f_no) {
		this.f_no = f_no;
	}

	public String getF_id() {
		return f_id;
	}

	public void setF_id(String f_id) {
		this.f_id = f_id;
	}

	public String getF_menu() {
		return f_menu;
	}

	public void setF_menu(String f_menu) {
		this.f_menu = f_menu;
	}

	public Integer getF_price() {
		return f_price;
	}

	public void setF_price(Integer f_price) {
		this.f_price = f_price;
	}

	public String[] getFilename() {
		return filename;
	}

	public void setFilename(String[] filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "FavorVO [f_num=" + f_num + ", f_no=" + f_no + ", f_id=" + f_id + ", f_menu=" + f_menu + ", f_price="
				+ f_price + ", filename=" + Arrays.toString(filename) + "]";
	}
	 
	
	
	
}