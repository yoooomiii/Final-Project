package www.egg.vo;

public class RiderVO {

	private int num = 0;
	private String name = null;
	private int age = 0;
	private String address = null;
	private String pick = null;
	private String info = null;
	
	
	@Override
	public String toString() {
		return "RiderVO [num=" + num + ", name=" + name + ", age=" + age + ", address=" + address + ", pick=" + pick
				+ ", info=" + info + "]";
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPick() {
		return pick;
	}
	public void setPick(String pick) {
		this.pick = pick;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}

}
