package www.egg.vo;

public class ReviewVO {

	private int num = 0;
	private String id = null;
	private String ex = null;
	private int star = 0;
	private String file1 = null;
	private String file2 = null;
	private String file3 = null;

	@Override
	public String toString() {
		return "ReviewVO [num=" + num + ", id=" + id + ", ex=" + ex + ", star=" + star + ", file1=" + file1 + ", file2="
				+ file2 + ", file3=" + file3 + "]";
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

	public String getEx() {
		return ex;
	}

	public void setEx(String ex) {
		this.ex = ex;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

	public String getFile2() {
		return file2;
	}

	public void setFile2(String file2) {
		this.file2 = file2;
	}

	public String getFile3() {
		return file3;
	}

	public void setFile3(String file3) {
		this.file3 = file3;
	}
	
}