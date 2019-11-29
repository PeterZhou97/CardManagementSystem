package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BankDao;
import dao.LibraryUserDao;
import dao.BorrowingDao;
import dao.CardUserDao;
import dao.StatusDao;
import entity.BankCard;
import entity.CardUser;
import entity.LibraryUser;

/**
 * Servlet implementation class CardServlet
 */
@WebServlet("/CardServlet")
public class CardServlet extends HttpServlet {
    private CardUserDao dao=new CardUserDao();  
    private BankDao dao2=new BankDao();
    private StatusDao dao3=new StatusDao();
    private BorrowingDao dao4=new BorrowingDao();
    private LibraryUserDao dao5=new LibraryUserDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CardServlet() {
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
			case "approve":{ 
				String CardID=request.getParameter("CardID");
				CardUser user=dao.queryUserById(CardID);
				user.setStatus("已开卡");
				dao.updateStatus(user);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('开卡成功！'); window.location='ad/CardActivation.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "cancel":{
				String CardID=request.getParameter("CardID");
				CardUser user=dao.queryUserById(CardID);
				LibraryUser lib_user=dao5.queryUserById(CardID);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				if(dao.queryBalance(CardID)>=0 && dao3.queryStatusById(CardID)==null && dao4.queryBorrowById(CardID)==null) {
					if(lib_user!=null) {dao5.deleteUser(lib_user);}	
					user.setStatus("已销卡");
					dao.updateStatus(user);					
					out.print("<script>alert('销卡成功！'); window.location='ad/CardDeactivation.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				else {
					out.println("此用户无法销卡，导致该情况可能的原因如下：");
					out.println("1、还书信息未确认。");
					out.println("2、退宿信息未确认。");
					out.println("3、账户存在欠款。");
					out.println("请该卡的用户查询相关信息，并改期进行销卡。");
					out.flush();
					out.close();
					return;
				}
			}
			case "approve_edit":{
				String id=request.getParameter("ID");
				CardUser user=dao.queryUserById(id);
				user.setStatus("已开卡");
				dao.updateStatus(user);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('用户修改信息成功！'); window.location='ad/PersonalInfo.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "query":{
				String userid=request.getParameter("UserID");
				CardUser user=dao.queryUserById(userid);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				if(user==null) {
					out.print("<script>alert('用户不存在！'); window.location='ad/PersonalInfo.jsp' </script>");
					out.flush();
					out.close();
				}
				else {
					out.println("ID："+user.getId());
					out.println("姓名："+user.getHostname());
					out.println("绑定银行卡ID："+user.getBank_card_id());
					out.println("卡密码："+user.getPwd());
					out.println("卡状态："+user.getStatus());
					out.println("卡余额："+user.getBalance());
					out.println("今日消费："+user.getConsumption_today());
					out.println("最近充值："+user.getRecent_recharge());
					out.flush();
					out.close();
					return;
				}
				
			}
			case "query_name":{
				String username=request.getParameter("UserName");
				CardUser user=dao.queryUserByName(username);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				if(user==null) {
					out.print("<script>alert('用户不存在！'); window.location='ad/PersonalInfo.jsp' </script>");
					out.flush();
					out.close();
				}
				else {
					out.println("ID："+user.getId());
					out.println("姓名："+user.getHostname());
					out.println("绑定银行卡ID："+user.getBank_card_id());
					out.println("卡密码："+user.getPwd());
					out.println("卡状态："+user.getStatus());
					out.println("卡余额："+user.getBalance());
					out.println("今日消费："+user.getConsumption_today());
					out.println("最近充值："+user.getRecent_recharge());
					out.flush();
					out.close();
					return;
				}
			}
			case "edit":{
				String username=request.getParameter("UserName");
				username=new String(username.getBytes("gbk"));
				String bankcard_id=request.getParameter("BankCardID");
				String bankcard_pwd=request.getParameter("BankCardPwd");
				String new_bankcard_id=request.getParameter("newBankCardID");
				String newbank=request.getParameter("newBank");
				String new_bankcard_pwd=request.getParameter("newBankCardPwd");
				float money=(float)Math.random()*1000;
				if(username!="" && bankcard_id!="" && bankcard_pwd!="") {
					CardUser user=(CardUser) request.getSession().getAttribute("user");
					user.setHostname(username);
					dao.updateName(user);
					if(new_bankcard_id!="" && newbank!="" && new_bankcard_pwd!="" && dao2.validatepwd(bankcard_id,bankcard_pwd)) {
						BankCard newcard=new BankCard(new_bankcard_id,newbank,username,new_bankcard_pwd,money);
						dao2.addBankCard(newcard);
						user.setBank_card_id(new_bankcard_id);
						dao.updateBankCard(user);
						user.setStatus("信息已更改");
						dao.updateStatus(user);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						dao2.deleteBankCard(bankcard_id);
						out.print("<script>alert('更改完毕，正等待管理员确认！！'); window.location='stu/PersonalInfoEdit.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('原银行卡密码错误！！'); window.location='stu/PersonalInfoEdit.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整！'); window.location='stu/PersonalInfoEdit.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "recharge":{
				String bankcard_id=request.getParameter("BankCardID");
				float money=Float.parseFloat(request.getParameter("Money"));
				String bankcard_pwd=request.getParameter("BankCardPwd");
				String confirm=request.getParameter("Confirm");
				CardUser user=(CardUser) request.getSession().getAttribute("user");
				if(dao.queryStatus(user.getId()).equals("已开卡")) {
					if(money+""!="" && bankcard_pwd!="" && confirm!="") {
						if(dao2.validatepwd(bankcard_id, bankcard_pwd)) {
							if(bankcard_pwd.equals(confirm)) {
								BankCard card=dao2.queryBankCardById(bankcard_id);
								if(card.getMoney()-money>0) {
									card.setMoney(card.getMoney()-money);
									dao2.updateBankCardMoney(card);
									user.setBalance(user.getBalance()+money);
									user.setRecent_recharge(money);
									dao.updateMoney(user);
									response.setCharacterEncoding("gbk");
									PrintWriter out = response.getWriter();
									out.print("<script>alert('一卡通充值成功！'); window.location='stu/PersonalAccountInfo.jsp' </script>");
									out.flush();
									out.close();
									return;
							    }
								else {
									response.setCharacterEncoding("gbk");
									PrintWriter out = response.getWriter();
									out.print("<script>alert('银行卡余额不足，请充值银行卡！'); window.location='stu/PersonalAccountInfo.jsp' </script>");
									out.flush();
									out.close();
									return;
								}
						}
							else {
								response.setCharacterEncoding("gbk");
								PrintWriter out = response.getWriter();
								out.print("<script>alert('两次密码输入不匹配！'); window.location='stu/PersonalAccountInfo.jsp' </script>");
								out.flush();
								out.close();
								return;
							}
						}
						else {
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('您的密码输入有误！'); window.location='stu/PersonalAccountInfo.jsp' </script>");
							out.flush();
							out.close();
							return;
						}
					
						
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('信息填写不完整！'); window.location='stu/PersonalAccountInfo.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('您持有的卡未激活，请联系管理员！'); window.location='stu/PersonalAccountInfo.jsp' </script>");
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
