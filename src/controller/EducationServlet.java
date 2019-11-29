package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ScoreSheetDao;
import entity.ScoreSheet;

/**
 * Servlet implementation class EducationServlet
 */
@WebServlet("/EducationServlet")
public class EducationServlet extends HttpServlet {
    private ScoreSheetDao dao=new ScoreSheetDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EducationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opttype=request.getParameter("opttype");
		switch(opttype) {
			case "add":{
				String stuid=request.getParameter("StuID");
				String stuname=request.getParameter("StuName");
				stuname=new String(stuname.getBytes("gbk"));
				String subject_id=request.getParameter("SubjectID");
				String subject=request.getParameter("Subject");
				subject=new String(subject.getBytes("gbk"));
				float score=Float.parseFloat(request.getParameter("Score"));
				float credit=Float.parseFloat(request.getParameter("Credit"));
				if(stuid!="" && stuname!="" && subject_id!="" && subject!="" && score+""!="" && credit+""!="") {
					if(score>=0 && score<=100 && credit>=0 && credit<=5) {
						ScoreSheet sheet=new ScoreSheet(stuid,stuname,subject_id,subject,score,credit);
						dao.addScore(sheet);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('上传成功！'); window.location='ad/ScoreSheet.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('正考成绩应在0-100分之间，绩点应在0-5之间！'); window.location='ad/ScoreSheetInput.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整，请检查后再提交！'); window.location='ad/ScoreSheetInput.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				
			}
			case "edit":{
				String StuID=request.getParameter("StuID");
				String CourseID=request.getParameter("CourseID");
				ScoreSheet sheet=dao.querySheetByIds(StuID, CourseID);
				request.getSession().setAttribute("sheet", sheet);
				response.sendRedirect(request.getContextPath()+"/ad/ScoreSheetEdit.jsp");
				return;
			}
			case "correct":{
				float score=Float.parseFloat(request.getParameter("Score"));
				float credit=Float.parseFloat(request.getParameter("Credit"));
				if( score+""!="" && credit+""!="") {
					if(score>=0 && score<=100 && credit>=0 && credit<=5) {
						ScoreSheet sheet=(ScoreSheet) request.getSession().getAttribute("sheet");
						sheet.setScore(score);
						sheet.setCredit(credit);
						dao.updateSheet(sheet);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('修改成功！'); window.location='ad/ScoreSheet.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('正考成绩应在0-100分之间，绩点应在0-5之间！'); window.location='ad/ScoreSheetEdit.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整，请检查后再提交！'); window.location='ad/ScoreSheetEdit.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "delete":{
				String StuID=request.getParameter("StuID");
				String CourseID=request.getParameter("CourseID");
				ScoreSheet sheet=dao.querySheetByIds(StuID, CourseID);
				dao.deleteSheet(sheet);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('删除成功！'); window.location='ad/ScoreSheet.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
		}
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}	
}
