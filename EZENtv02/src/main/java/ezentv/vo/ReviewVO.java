package ezentv.vo;

public class ReviewVO 
{
	private String rno; 	    // ���� ��ȣ
	private String rating; 	    // ��������ȣ
	private String user_no; 	// ȸ�� ��ȣ
	private String contents_no; // ����
	private String rnote;     	// ����
	private String rdate;    	// �ۼ���
	private String report_yn; 	// �Ű���
	private String repordatet; 	// �Ű�����
	private String reporter; 	// �Ű��ھ��̵�
	
	public ReviewVO() 
	{
		rno         = "";
		rating      = "";
		user_no     = "";
		contents_no = "";
		rnote       = "";
		rdate       = "";
		report_yn   = "";
		repordatet  = "";
		reporter    = "";
	}

	//getter
	public String getRno()         { return rno; }
	public String getRating()      { return rating; }
	public String getUser_no()     { return user_no; }
	public String getContents_no() { return contents_no; }
	public String getRnote()       { return rnote; }
	public String getRdate()       { return rdate; }
	public String getReport_yn()   { return report_yn; }
	public String getRepordatet()  { return repordatet; }
	public String getReporter()    { return reporter; }

	//setter
	public void setRno(String rno)                 { this.rno = rno; }
	public void setRating(String rating)           { this.rating = rating; }
	public void setUser_no(String user_no)         { this.user_no = user_no; }
	public void setContents_no(String contents_no) { this.contents_no = contents_no; }
	public void setRnote(String rnote)             { this.rnote = rnote; }
	public void setRdate(String rdate)             { this.rdate = rdate; }
	public void setReport_yn(String report_yn)     { this.report_yn = report_yn; }
	public void setRepordatet(String repordatet)   { this.repordatet = repordatet; }
	public void setReporter(String reporter)       { this.reporter = reporter; }
}
