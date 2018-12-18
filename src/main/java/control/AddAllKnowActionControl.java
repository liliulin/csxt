package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Timestamp;

import bean.AllKnownReportBean;
import dbutil.DBConnection;

/**
 * Servlet implementation class AddAllKnowActionControl
 */
public class AddAllKnowActionControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAllKnowActionControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String project = request.getParameter("projectName").trim();
		String branch = request.getParameter("branch").trim();
		String type = request.getParameter("type").trim();
		String content = request.getParameter("content").trim();
		String result = request.getParameter("result").trim();
		String onwer = request.getParameter("onwer").trim();
		String reporter = request.getParameter("reporter").trim();
		AllKnownReportBean addAllKnowReport = null ;
		String request_uri = request.getRequestURI().trim();
		String path = request_uri.substring(request_uri.indexOf("/",1), request_uri.indexOf("."));
		String sql = "" ;
		int number = 0;
		if("/addAllKnowAction".equalsIgnoreCase(path)) {
			Connection con  = new DBConnection().getConnection();
			PreparedStatement pstmt =null ;
			addAllKnowReport = new AllKnownReportBean() ;
			if(project!="" && branch!="" && content !="" && result !="" && onwer !="" && reporter !=""){
				addAllKnowReport.setProject(project);
				addAllKnowReport.setBranch(branch);
				addAllKnowReport.setType(type);
				addAllKnowReport.setContent(content);
				addAllKnowReport.setResult(result);
				addAllKnowReport.setTestOnwer(onwer);
				addAllKnowReport.setReporter(reporter);
				SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
				format.setLenient(false);
				Timestamp  date = new Timestamp(new Date().getTime());
				addAllKnowReport.setReportDate(date.toString());
				sql = "insert into allknownreport (project,branch,type,content,result,testonwer,reporter,reportdate) values(?,?,?,?,?,?,?,?)";
				try {
				    pstmt = con.prepareStatement(sql);
					pstmt.setString(1, addAllKnowReport.getProject());
					pstmt.setString(2, addAllKnowReport.getBranch());
					pstmt.setString(3, addAllKnowReport.getType());
					pstmt.setString(4, addAllKnowReport.getContent());
					pstmt.setString(5, addAllKnowReport.getResult());
					pstmt.setString(6, addAllKnowReport.getTestOnwer());
					pstmt.setString(7, addAllKnowReport.getReporter());
					pstmt.setTimestamp(8, date);
					number = pstmt.executeUpdate();
					con.setAutoCommit(true);
									
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					gotoPage("./views/addFail.jsp",request,response);
				} finally {
					if(con!=null) {
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							gotoPage("./views/addFail.jsp",request,response);
						}
					}
				}
				
				if(number > 0) {
					gotoPage("./views/addSucess.jsp",request,response);
				}else {
					gotoPage("./views/addFail.jsp",request,response);
				}
				
			}else {
				gotoPage("./views/addFail.jsp",request,response);
			}
		} else {
			gotoPage("./views/addFail.jsp",request,response);
		}
		
	}
	
	
	/**
	 * gotoPage
	 */
	private void gotoPage(String targetURL, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd;
		rd = request.getRequestDispatcher(targetURL);
		rd.forward(request, response);
	}
	
	

}
