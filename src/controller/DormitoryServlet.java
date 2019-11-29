package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DormitoryDao;
import dao.StatusDao;
import entity.AccomodationStatus;
import entity.CardUser;
import entity.Dormitory;

/**
 * Servlet implementation class DormitoryServlet
 */
@WebServlet("/DormitoryServlet")
public class DormitoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DormitoryDao dao=new DormitoryDao();
    private StatusDao dao2=new StatusDao();
    private SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    Date now=new Date();
	String today=df.format(now);
	Calendar c=Calendar.getInstance();
	int year=c.get(Calendar.YEAR);
	int month=c.get(Calendar.MONTH)+1;
	int date=c.get(Calendar.DATE);
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DormitoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opttype=request.getParameter("opttype");
		switch(opttype) {
			case "add":{
				String dormid=request.getParameter("DormID");
				String dept=request.getParameter("Dept");
				String classs=request.getParameter("Classs");
				String pwd=request.getParameter("Pwd");
				int num_a=Integer.parseInt(request.getParameter("Num_A"));
				if(dormid!="" && dept!="" && classs!="" && pwd!="" &&num_a+""!="") {
					Dormitory dorm=new Dormitory(dormid,dept,classs,pwd,num_a,0);
					dao.addDorm(dorm);
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('添加成功！'); window.location='ad/DormInfo.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整！'); window.location='ad/DormInfoInput.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "application":{
				String ID=request.getParameter("DormID");
				Dormitory dorm=dao.queryDormById(ID);
				CardUser user=(CardUser)request.getSession().getAttribute("user");
				String date_begin=(year+"-"+month+"-"+date).toString();
				AccomodationStatus status=new AccomodationStatus(user.getId(),dorm.getId(),date_begin,"入宿待确认中");
				dao2.addStatus(status);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('申请入宿成功！'); window.location='stu/Domitory_Retire.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "retire":{
				String stuid=request.getParameter("StuID");
				String roomid=request.getParameter("RoomID");
				AccomodationStatus status=dao2.queryStatusById2(stuid, roomid);
				status.setStatus("退宿待批准中");
				dao2.updateStatus(status);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('申请退宿成功！'); window.location='stu/Domitory_Retire.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "approve_apply":{
				String stuid=request.getParameter("StuID");
				String roomid=request.getParameter("RoomID");
				AccomodationStatus status=dao2.queryStatusById2(stuid, roomid);
				status.setStatus("已批准入宿");
				Dormitory dorm=dao.queryDormById(roomid);
				dorm.setNum_available(dorm.getNum_available()-1);
				dorm.setNum_present(dorm.getNum_present()+1);
				dao2.updateStatus(status);
				dao.updateDorm(dorm);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('批准入宿成功！'); window.location='ad/CheckIn.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "approve_retire":{
				String stuid=request.getParameter("StuID");
				String roomid=request.getParameter("RoomID");
				AccomodationStatus status=dao2.queryStatusById2(stuid, roomid);
				dao2.deleteStatus(status);
				Dormitory dorm=dao.queryDormById(roomid);
				dorm.setNum_available(dorm.getNum_available()+1);
				dorm.setNum_present(dorm.getNum_present()-1);
				dao.updateDorm(dorm);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('批准退宿成功！'); window.location='ad/CheckOut.jsp' </script>");
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
