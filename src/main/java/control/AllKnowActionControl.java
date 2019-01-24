package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AllKnownReportBean;
import dbutil.DBConnection;

/**
 * Servlet implementation class AllKnowActionControl
 */
public class AllKnowActionControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AllKnowActionControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String searchReportDate = request.getParameter("reportDate").trim();
		System.out.println("searchReportDate:" + searchReportDate);
		AllKnownReportBean allKnowReportBean = null;
		ArrayList<AllKnownReportBean> allKnowList = new ArrayList<AllKnownReportBean>();
		String request_uri = request.getRequestURI().trim();
		System.out.println("requst_uri:" + request_uri);
		String path = request_uri.substring(request_uri.indexOf("/", 1), request_uri.indexOf("."));
		System.out.println("path:" + path);
		String sql = "";
		if ("/allKnowAction".equals(path)) {
			Connection con = new DBConnection().getConnection();
			ResultSet rs;
			// sql = "select * from allknownreport where reportdate like
			// '%"+searchReportDate+"%'" ;
			if ("".equalsIgnoreCase(searchReportDate)) {
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				searchReportDate = df.format(new Date());
				sql = "select * from all_known_report where reportdate like '%" + searchReportDate + "%'";
			} else {
				sql = "select * from all_known_report where reportdate like '%" + searchReportDate + "%'";
			}
			try {
				Statement stmt = con.createStatement();
				rs = stmt.executeQuery(sql);
				if (rs != null) {
					while (rs.next()) {
						allKnowReportBean = new AllKnownReportBean();
						int id = rs.getInt("id");
						String project = rs.getString("project");
						String branch = rs.getString("branch");
						String type = rs.getString("type");
						String content = rs.getString("content");
						String result = rs.getString("result");
						String testOnwer = rs.getString("testonwer");
						String reportDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss")
								.format(rs.getTimestamp("reportdate"));
						String reporter = rs.getString("reporter");
						allKnowReportBean.setId(id);
						allKnowReportBean.setProject(project);
						allKnowReportBean.setBranch(branch);
						allKnowReportBean.setType(type);
						allKnowReportBean.setContent(content);
						allKnowReportBean.setResult(result);
						allKnowReportBean.setTestOnwer(testOnwer);
						allKnowReportBean.setReportDate(reportDate);
						allKnowReportBean.setReporter(reporter);
						allKnowList.add(allKnowReportBean);
					}
				}

				request.setAttribute("allKnowList", allKnowList);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				try {
					con.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (allKnowList.isEmpty()) {
				gotoPage("./views/noReport.jsp", request, response);
			} else {
				gotoPage("./views/allKnowReport.jsp", request, response);
			}

		} else {
			gotoPage("../index.jsp", request, response);
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
