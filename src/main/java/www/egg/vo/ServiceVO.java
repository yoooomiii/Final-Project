package www.egg.vo;

public class ServiceVO {

	private int num = 0;
	private String id = null;
	private String title = null;
	private String ex = null;
	private String re = null;
	private String check = null;
	private int in_date = 0;
	private String file = null;
	
	@Override
	public String toString() {
		return "ServiceVO [num=" + num + ", id=" + id + ", title=" + title + ", ex=" + ex + ", re=" + re + ", check="
				+ check + ", in_date=" + in_date + ", file=" + file + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEx() {
		return ex;
	}
	public void setEx(String ex) {
		this.ex = ex;
	}
	public String getRe() {
		return re;
	}
	public void setRe(String re) {
		this.re = re;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	public int getIn_date() {
		return in_date;
	}
	public void setIn_date(int in_date) {
		this.in_date = in_date;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
}
