package www.egg.vo;

public class ReviewVO {
    private Integer re_num;
    private Integer re_no;
    private String re_id;
    private String re_ex;
    private int re_star;
    private String re_file; // 파일 이름을 저장할 필드
	
    @Override
	public String toString() {
		return "ReviewVO [re_num=" + re_num + ", re_no=" + re_no + ", re_id=" + re_id + ", re_ex=" + re_ex
				+ ", re_star=" + re_star + ", re_file=" + re_file + "]";
	}

	public Integer getRe_num() {
		return re_num;
	}

	public void setRe_num(Integer re_num) {
		this.re_num = re_num;
	}

	public Integer getRe_no() {
		return re_no;
	}

	public void setRe_no(Integer re_no) {
		this.re_no = re_no;
	}

	public String getRe_id() {
		return re_id;
	}

	public void setRe_id(String re_id) {
		this.re_id = re_id;
	}

	public String getRe_ex() {
		return re_ex;
	}

	public void setRe_ex(String re_ex) {
		this.re_ex = re_ex;
	}

	public int getRe_star() {
		return re_star;
	}

	public void setRe_star(int re_star) {
		this.re_star = re_star;
	}

	public String getRe_file() {
		return re_file;
	}

	public void setRe_file(String re_file) {
		this.re_file = re_file;
	}
	
    
  
	
}