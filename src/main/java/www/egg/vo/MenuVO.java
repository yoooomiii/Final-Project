package www.egg.vo;

public class MenuVO {	
	
	private String code = null;	 // ���θ޴��ڵ�
	private int no = 0;			 // �޴���ȣ
	private String name = null;	 // �޴��̸�
	private int price = 0;		 // �޴�����
	private String ex = null;	 // �޴�����
	private int star = 0;		 // ����
	private String file = null;	 // �޴����� 
	
	@Override
	public String toString() {
		return "MenuVO [code=" + code + ", no=" + no + ", name=" + name + ", price=" + price + ", ex=" + ex + ", star="
				+ star + ", file=" + file + "]";
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEx() {
		return ex;
	}
	public void setEx(String ex) {
		this.ex = ex;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}

}
