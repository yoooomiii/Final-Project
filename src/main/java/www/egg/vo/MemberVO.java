package www.egg.vo;

public class MemberVO {

	private String id = null;       // 회원id
	private String pw = null;       // 회원pw
	private String name = null;     // 회원이름
	private String call = null;     // 휴대전화
	private String email = null;    // 이메일 
	private String address = null;  // 현재주소
	private int master = 0;         // 회원권한

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", call=" + call + ", email=" + email
				+ ", address=" + address + ", master=" + master + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCall() {
		return call;
	}

	public void setCall(String call) {
		this.call = call;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getMaster() {
		return master;
	}

	public void setMaster(int master) {
		this.master = master;
	}
}
