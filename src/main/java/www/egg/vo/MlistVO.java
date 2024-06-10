package www.egg.vo;

public class MlistVO {
	
	private int num =0;
	private String id =null;
	private int no =0;
	private String comment =null;
	
	@Override
	public String toString() {
		return "MlistVO [num=" + num + ", id=" + id + ", no=" + no + ", comment=" + comment + "]";
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

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
