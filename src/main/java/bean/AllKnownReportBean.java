package bean;
/**
 * 周知报告VO
 * @author 2018-11-21
 * @date 2018-11-21
 */
public class AllKnownReportBean {
	private int id ;
	private String project;
	private String branch ;
	private String type ;
	private String content ;
	private String result ;
	private String testOnwer ;
	private String reportDate ;
	private String reporter ;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getTestOnwer() {
		return testOnwer;
	}
	public void setTestOnwer(String testOnwer) {
		this.testOnwer = testOnwer;
	}
	public String getReportDate() {
		return reportDate;
	}
	public void setReportDate(String reportDate) {
		this.reportDate = reportDate;
	}
	public String getReporter() {
		return reporter;
	}
	public void setReporter(String reporter) {
		this.reporter = reporter;
	}
	
	
	
}
