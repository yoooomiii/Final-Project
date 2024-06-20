package www.egg.vo;

public class PaymentVO {

	private Integer pm_no =0;          // ������ȣ
	private Integer pm_num =0;         // �ֹ���ȣ
	private String pm_id = null;       // ȸ�� id
	private int pm_price = 0;          // �ֹ��ݾ�
	private int pm_tip = 0;            // ��޺�
	private int pm_total = 0;          // �Ѱ����ݾ�
	private int pm_point = 0;          // ����Ʈ
	private String pm_pay = null;      // ��������
	private String pm_card = null;     // ��������
	private String pm_date = null;        // �ֹ��Ͻ�
	private String pm_address = null;  // ����ּ�
	private String pm_pick = null;     // ���ɹ��
	private String pm_comment = null;  // ��û����
	@Override
	
	
	
	
	public String toString() {
		return "PaymentVO [pm_no=" + pm_no + ", pm_num=" + pm_num + ", pm_id=" + pm_id + ", pm_price=" + pm_price
				+ ", pm_tip=" + pm_tip + ", pm_total=" + pm_total + ", pm_point=" + pm_point + ", pm_pay=" + pm_pay
				+ ", pm_card=" + pm_card + ", pm_date=" + pm_date + ", pm_address=" + pm_address + ", pm_pick="
				+ pm_pick + ", pm_comment=" + pm_comment + "]";
	}
	public Integer getPm_no() {
		return pm_no;
	}
	public void setPm_no(Integer pm_no) {
		this.pm_no = pm_no;
	}
	public Integer getPm_num() {
		return pm_num;
	}
	public void setPm_num(Integer pm_num) {
		this.pm_num = pm_num;
	}
	public String getPm_id() {
		return pm_id;
	}
	public void setPm_id(String pm_id) {
		this.pm_id = pm_id;
	}
	public int getPm_price() {
		return pm_price;
	}
	public void setPm_price(int pm_price) {
		this.pm_price = pm_price;
	}
	public int getPm_tip() {
		return pm_tip;
	}
	public void setPm_tip(int pm_tip) {
		this.pm_tip = pm_tip;
	}
	public int getPm_total() {
		return pm_total;
	}
	public void setPm_total(int pm_total) {
		this.pm_total = pm_total;
	}
	public int getPm_point() {
		return pm_point;
	}
	public void setPm_point(int pm_point) {
		this.pm_point = pm_point;
	}
	public String getPm_pay() {
		return pm_pay;
	}
	public void setPm_pay(String pm_pay) {
		this.pm_pay = pm_pay;
	}
	public String getPm_card() {
		return pm_card;
	}
	public void setPm_card(String pm_card) {
		this.pm_card = pm_card;
	}
	public String getPm_date() {
		return pm_date;
	}
	public void setPm_date(String pm_date) {
		this.pm_date = pm_date;
	}
	public String getPm_address() {
		return pm_address;
	}
	public void setPm_address(String pm_address) {
		this.pm_address = pm_address;
	}
	public String getPm_pick() {
		return pm_pick;
	}
	public void setPm_pick(String pm_pick) {
		this.pm_pick = pm_pick;
	}
	public String getPm_comment() {
		return pm_comment;
	}
	public void setPm_comment(String pm_comment) {
		this.pm_comment = pm_comment;
	}
	
	
	
	
}