package www.egg.vo;

public class DeliveryVO {

	private Integer no =0;       // ��Ϲ�ȣ
	private Integer num =0;      // �ֹ���ȣ
	private String time=null;    // ����ð�
	private String check =null;  // �������
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	
	@Override
	public String toString() {
		return "DeliveryVO [no=" + no + ", num=" + num + ", time=" + time + ", check=" + check + "]";
	}
	
	
}
