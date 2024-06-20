package www.egg.vo;

public class DeliveryVO {

	private Integer d_no =0;       // ��Ϲ�ȣ
	private Integer d_num =0;      // �ֹ���ȣ
	private String d_time=null;    // ����ð�
	private String d_check =null;  // �������
	
	
	public Integer getD_no() {
		return d_no;
	}
	public void setD_no(Integer d_no) {
		this.d_no = d_no;
	}
	public Integer getD_num() {
		return d_num;
	}
	public void setD_num(Integer d_num) {
		this.d_num = d_num;
	}
	public String getD_time() {
		return d_time;
	}
	public void setD_time(String d_time) {
		this.d_time = d_time;
	}
	public String getD_check() {
		return d_check;
	}
	public void setD_check(String d_check) {
		this.d_check = d_check;
	}
	@Override
	public String toString() {
		return "DeliveryVO [d_no=" + d_no + ", d_num=" + d_num + ", d_time=" + d_time + ", d_check=" + d_check + "]";
	}

	
	
}
