package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dao.BankDao;
import dao.CardUserDao;
import entity.Administrator;
import entity.BankCard;
import entity.CardUser;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CardUserDao dao1=new CardUserDao();
	private AdminDao dao2=new AdminDao();
    private BankDao dao3=new BankDao();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opttype=request.getParameter("opttype");
		switch(opttype) {
			case "login":{
				String userid=request.getParameter("UserID");
				String userpwd=request.getParameter("PassWord");
				String usertype=request.getParameter("UserType");
				usertype=new String(usertype.getBytes("gbk"));
				CardUser user=dao1.queryUserById(userid);
				if(userid!="" && userpwd!="") {
					switch(usertype) {
						case "ѧ��":{
							if(user==null) {
								response.setCharacterEncoding("gbk");
								PrintWriter out = response.getWriter();
								out.print("<script>alert('�û������ڣ�'); window.location='Login.html' </script>");
								out.flush();
								out.close();
								return;
							}
							else {
								String bankcard_id=dao1.queryUserBankCard(userid);
								String username=dao1.queryUsername(userid);
								String status=dao1.queryStatus(userid);
								float balance=dao1.queryBalance(userid);
								float consumption=dao1.queryConsumption(userid);
								float recharge=dao1.queryRecharge(userid);
								user=new CardUser(userid,bankcard_id,username,userpwd,status,balance,consumption,recharge);
								if(dao1.validatepwd(user)) {
									request.getSession().setAttribute("user", user);
								    response.sendRedirect("./stu/Home.jsp");
								    return;
								}
								else {
									response.setCharacterEncoding("gbk");
									PrintWriter out = response.getWriter();
									out.print("<script>alert('�������'); window.location='Login.html' </script>");
									out.flush();
									out.close();
									return;
								}
							}
							
							
						}
						case "����Ա":{							
							String username=dao2.queryAdminname(userid);
							Administrator admin=dao2.queryAdminById(userid);
							if(admin==null) {
								response.setCharacterEncoding("gbk");
								PrintWriter out = response.getWriter();
								out.print("<script>alert('�û������ڣ�'); window.location='Login.html' </script>");
								out.flush();
								out.close();
								return;
							}
							else {
								admin=new Administrator(userid,username,userpwd);
								if(dao2.validatepwd(admin)) {
									request.getSession().setAttribute("admin", admin);
									response.sendRedirect("./ad/Home.jsp");
									return;
								}
								else {
									response.setCharacterEncoding("gbk");
									PrintWriter out = response.getWriter();
									out.print("<script>alert('�������'); window.location='Login.html' </script>");
									out.flush();
									out.close();
									return; 
								}
							
							}		
						}
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('δ��д�û��������룡'); window.location='Login.html' </script>");
					out.flush();
					out.close();
				}
			}
			case "registry":{
				String userid=request.getParameter("UserID");
				String username=request.getParameter("UserName");
				username=new String(username.getBytes("gbk"));
				String userpwd=request.getParameter("PassWord");
				String usertype=request.getParameter("UserType");
				usertype=new String(usertype.getBytes("gbk"));
					if(usertype.equals("����Ա")) {
						if(userid!="" && username!="" && userpwd!="") {
							Administrator admin=new Administrator(userid,username,userpwd);
							dao2.addAdmin(admin);
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('ע��ɹ���'); window.location='Login.html' </script>");
							out.flush();
							out.close();
							return;
						}
						else {
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('��Ϣ��д����������������ύ��'); window.location='Registry.html' </script>");
							out.flush();
							out.close();
							return;
						}
						
					}
					else if(usertype.equals("ѧ��")) {
						 if(userid!="" && username!="" && userpwd!="") {
							String bankcard_id=request.getParameter("BankCardID");
							String bankname=request.getParameter("BankName");
							bankname=new String(bankname.getBytes("gbk"));
							String bankcard_pwd=request.getParameter("BankCardPasswd");
							float money=(float)Math.random()*1000;
							if(bankcard_id!="" && bankname!="" && bankcard_pwd!="") {
								BankCard card=new BankCard(bankcard_id,bankname,username,bankcard_pwd,money);
								dao3.addBankCard(card);
								CardUser user=new CardUser(userid,bankcard_id,username,userpwd,"��ȷ��",0,0,0);
								dao1.addUser(user);
								response.setCharacterEncoding("gbk");
								PrintWriter out = response.getWriter();
								out.print("<script>alert('ע��ɹ���'); window.location='Login.html' </script>");
								out.flush();
								out.close();
								return;
							}
							else {
								response.setCharacterEncoding("gbk");
								PrintWriter out = response.getWriter();
								out.print("<script>alert('��Ϣ��д����������������ύ��'); window.location='Registry.html' </script>");
								out.flush();
								out.close();
								return;
							}
						}
						else {
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('��Ϣ��д����������������ύ��'); window.location='Registry.html' </script>");
							out.flush();
							out.close();
							return;
						}
						
					}
				
			}
			case "edit_pwd" :{
				String newpwd=request.getParameter("newpwd");
				String confirm=request.getParameter("confirm");
				if(newpwd!="" && confirm!=null) {
					if(newpwd.equals(confirm)) {
						Administrator ad=(Administrator) request.getSession().getAttribute("admin");
						ad.setPwd(newpwd);
						dao2.updateAdmin(ad);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('�޸�����ɹ���'); window.location='ad/Home.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('��������ȷ�����벻һ�£�'); window.location='ad/Home.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('��Ϣ���벻��������������ύ��'); window.location='ad/Home.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "edit_info" :{
				String newpwd=request.getParameter("newpwd");
				String confirm=request.getParameter("confirm");
				if(newpwd!="" && confirm!="") {
					if(newpwd.equals(confirm)) {
						CardUser user=(CardUser) request.getSession().getAttribute("user");
						user.setPwd(newpwd);
						dao1.updatePwd(user);
						user.setStatus("��Ϣ�Ѹ���");
						dao1.updateStatus(user);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('�޸�����ɹ���'); window.location='stu/Home.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('��������ȷ�����벻һ�£�'); window.location='stu/Home.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('��Ϣ���벻��������������ύ��'); window.location='stu/Home.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
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
