package www.egg.vo;

public class BasketVO {

	private int no =0;
	private String id =null;
	private int price = 0;
	private String pick =null;
	
	@Override
	public String toString() {
		return "BasketVO [no=" + no + ", id=" + id + ", price=" + price + ", pick=" + pick + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPick() {
		return pick;
	}

	public void setPick(String pick) {
		this.pick = pick;
	}

}
