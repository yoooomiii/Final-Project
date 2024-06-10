package www.egg.vo;

public class MlistVO {
	
	private Integer num =0;           
	private String id =null;
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "MlistVO [num=" + num + ", id=" + id + "]";
	}
	
}
