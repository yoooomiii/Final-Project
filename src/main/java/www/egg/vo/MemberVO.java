package www.egg.vo;

public class MemberVO {

	private String id = null;       // ȸ��id
	private String pw = null;       // ȸ��pw
	private String name = null;     // ȸ���̸�
	private String call = null;     // �޴���ȭ
	private String email = null;    // �̸��� 
	private String address = null;  // �����ּ�
	private int master = 0;         // ȸ������

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
