package www.egg.vo;

public class FavorVO {

	private Integer f_num =0;     
	private Integer f_no =0; 
	private String f_id = null;    
	private String f_name = null;   
	
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

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public Integer getF_price() {
		return f_price;
	}

	public void setF_price(Integer f_price) {
		this.f_price = f_price;
	}

	private Integer f_price = 0; 
	
	@Override
	public String toString() {
		return "FavorVO [f_num=" + f_num + ", f_no=" + f_no + ", f_id=" + f_id + ", f_name=" + f_name + ", f_price="
				+ f_price + "]";
	}
}