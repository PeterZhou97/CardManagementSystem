package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDao;
import dao.BorrowingDao;
import dao.LibraryUserDao;
import entity.Book;
import entity.Books_Borrowing;
import entity.CardUser;
import entity.LibraryUser;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

/**
 * Servlet implementation class LibraryServlet
 */
@WebServlet("/LibraryServlet")
public class LibraryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private LibraryUserDao dao=new LibraryUserDao();
    private BookDao dao2=new BookDao();
    private BorrowingDao dao3=new BorrowingDao();
    private SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    Date now=new Date();
	String today=df.format(now);
	Calendar c=Calendar.getInstance();
	int year=c.get(Calendar.YEAR);
	int month=c.get(Calendar.MONTH);
	int date=c.get(Calendar.DATE);
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LibraryServlet() {
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
			case "registry":{
				String userid=request.getParameter("UserID");
				String username=request.getParameter("UserName");
				username=new String(username.getBytes("gbk"));
				String userpwd=request.getParameter("PassWord");
				if(userid!="" && username!="" && userpwd!="") {
					LibraryUser user=new LibraryUser(userid,username,userpwd);
					dao.addUser(user);
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('注册成功！'); window.location='stu/Library_Login.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整！'); window.location='stu/Library_Registry.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "login":{
				String userid=request.getParameter("UserID");
				String username=dao.queryUsername(userid);
				String userpwd=request.getParameter("PassWord");
				LibraryUser user=dao.queryUserById(userid);
				if(userid!="" && userpwd!="") {
					if(user==null) {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('用户不存在！'); window.location='stu/Library_Login.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						user=new LibraryUser(userid,username,userpwd);
						if(dao.validatepwd(user)) {
							request.getSession().setAttribute("lib_user", user);
							response.sendRedirect("./stu/Library_Home.jsp");
							return;
						}
						else {
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('密码错误！'); window.location='stu/Library_Login.jsp' </script>");
							out.flush();
							out.close();
							return;
						}
					}
					
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('未填写用户名或密码！'); window.location='stu/Library_Login.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				
			}
			case "edit_info":{
				String newpwd=request.getParameter("newpwd");
				String confirm=request.getParameter("confirm");
				if(newpwd.equals(confirm)) {
					LibraryUser user=(LibraryUser) request.getSession().getAttribute("lib_user");
					user.setPwd(newpwd);
					dao.updatePwd(user);
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('修改密码成功！'); window.location='stu/Library_Home.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('新密码与确认密码不一致！'); window.location='stu/Library_Home.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "cancel":{
				String pwd=request.getParameter("Password");
				if(pwd!="") {
					LibraryUser user=(LibraryUser)request.getSession().getAttribute("lib_user");
					if(pwd.equals(user.getPwd())) {
						dao.deleteUser(user);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('注销成功！'); window.location='stu/Library_Login.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('密码错误！'); window.location='stu/Library_Withdraw.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('请输入密码！'); window.location='stu/Library_Withdraw.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "book_add":{
				String bookid=request.getParameter("BookID");
				String bookname=request.getParameter("BookName");
				String location=request.getParameter("Location");
				int storage=Integer.parseInt(request.getParameter("Storage"));
				if(bookid!="" && bookname!="" && location!="" && storage+""!="") {
					Book book=new Book(bookid,bookname,location,storage);
					dao2.addBook(book);
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('添加成功！'); window.location='ad/BookInfo.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整！'); window.location='ad/BookInfoInput.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "book_edit":{
				String BookID=request.getParameter("BookID");
				Book book=dao2.queryBookById(BookID);
				request.getSession().setAttribute("book", book);
				response.sendRedirect("ad/BookInfoEdit.jsp");
				return;
			}
			case "book_update":{
				String bookid=request.getParameter("BookID");
				String bookname=request.getParameter("BookName");
				String location=request.getParameter("Location");
				int storage=Integer.parseInt(request.getParameter("Storage"));
				if(bookid!="" && bookname!="" && location!="" && storage+""!="") {
					Book book=(Book)request.getSession().getAttribute("book");
					book.setName(bookname);
					book.setLocation(location);
					book.setStorage(storage);
					dao2.updateBook(book);
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('更改成功！'); window.location='ad/BookInfo.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整！'); window.location='ad/BookInfoEdit.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "book_del":{
				String BookID=request.getParameter("BookID");
				Book book=dao2.queryBookById(BookID);
				dao2.deleteBook(book);
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('删除成功！'); window.location='ad/BookInfo.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "book_order":{
				String BookID=request.getParameter("BookID");
				Book book=dao2.queryBookById(BookID);
				request.getSession().setAttribute("ordered_book", book);
				response.sendRedirect("stu/Book_Order.jsp");
				return;
			}
			case "book_declare":{
				String syear=request.getParameter("year");
				String smonth=request.getParameter("month");
				String sdate=request.getParameter("date");
				String appointed_date=(syear+"-"+smonth+"-"+sdate).toString();
				int days=Integer.parseInt(request.getParameter("days"));
				if(syear!="" && smonth!="" && sdate!="" && days+""!="") {
					Book book=(Book)request.getSession().getAttribute("ordered_book");
					if(book.getStorage()>0) {
						
						LibraryUser user=(LibraryUser)request.getSession().getAttribute("lib_user");
						Books_Borrowing borrow=new Books_Borrowing(user.getStu_id(),book.getId(),appointed_date,days);
						SimpleDateFormat df2=new SimpleDateFormat("yyyy-MM-dd");
						Date start1 = null;
						try {
							start1 = df2.parse(appointed_date);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} 
						String start2=df2.format(start1);
						if(today.compareTo(start2)<0) {
							book.setStorage(book.getStorage()-1);
							dao2.updateBook(book);
							dao3.addBorrow(borrow);
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('图书预约成功，借阅期从"+appointed_date+"开始！！'); window.location='stu/Library_Order.jsp' </script>");
							out.flush();
							out.close();
							return;
						}
						else {
							response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('输入时间有误！'); window.location='stu/Library_Order.jsp' </script>");
							out.flush();
							out.close();
							return;
						}
						
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('该书已没有库存！'); window.location='stu/Library_Order.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
				else {
					response.setCharacterEncoding("gbk");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('信息填写不完整！'); window.location='stu/Book_Order.jsp' </script>");
					out.flush();
					out.close();
					return;
				}
			}
			case "book_borrow":{
				String BookID=request.getParameter("BookID");
				Book book=dao2.queryBookById(BookID);
				request.getSession().setAttribute("borrowed_book", book);
				response.sendRedirect("stu/Book_Borrow.jsp");
				return;
			}
			case "lend":{
				String appointed_date=(year+"-"+month+"-"+date).toString();
				int days=Integer.parseInt(request.getParameter("days"));
				if(year+""!="" && month+""!="" && date+""!="" && days+""!="") {
					Book book=(Book)request.getSession().getAttribute("borrowed_book");
					if(book.getStorage()>0) {
						book.setStorage(book.getStorage()-1);
						dao2.updateBook(book);
						LibraryUser user=(LibraryUser)request.getSession().getAttribute("lib_user");
						Books_Borrowing borrow=new Books_Borrowing(user.getStu_id(),book.getId(),appointed_date,days);
						dao3.addBorrow(borrow);
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('图书借阅成功，借阅从"+today+"开始！'); window.location='stu/Library_Borrow.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
					else {
						response.setCharacterEncoding("gbk");
						PrintWriter out = response.getWriter();
						out.print("<script>alert('该书已没有库存！'); window.location='stu/Library_Borrow.jsp' </script>");
						out.flush();
						out.close();
						return;
					}
				}
			}
			case "book_return":{
				String StuID=request.getParameter("StuID");
				String BookID=request.getParameter("BookID");
				Books_Borrowing borrow=dao3.queryBorrowByID(StuID, BookID);
				dao3.deleteBorrow(borrow);
				Book book=(Book)request.getSession().getAttribute("ordered_book");
				Book book2=(Book)request.getSession().getAttribute("borrowed_book");
				if(book!=null) {
					book.setStorage(book.getStorage()+1);
					dao2.updateBook(book);
				}
				else if(book2!=null) {
					book2.setStorage(book2.getStorage()+1);
					dao2.updateBook(book2);
				}
				response.setCharacterEncoding("gbk");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('还书成功！'); window.location='stu/Library_Return.jsp' </script>");
				out.flush();
				out.close();
				return;
			}
			case "print":{
				 try {
			            WritableWorkbook wwb = null;
			               // 创建可写入的Excel工作簿
			               String fileName = "D:\\eclipse-workspace\\CardManagementSystem\\WebContent\\files\\Borrowing.xls";
			               File file=new File(fileName);
			               if (!file.exists()) {
			                   file.createNewFile();
			               }
			               //以fileName为文件名来创建一个Workbook
			               wwb = Workbook.createWorkbook(file);
			 
			               // 创建工作表
			               WritableSheet ws = wwb.createSheet("Test Shee 1", 0);
			               //查询数据库中所有的数据
			               CardUser user=(CardUser) request.getSession().getAttribute("user");
			               List<Books_Borrowing> list= dao3.queryBorrowByID(user.getId());
			               //要插入到的Excel表格的行号，默认从0开始
			               Label label_bookid= new Label(0, 0, "书籍号");//表示第
			               Label label_date= new Label(1, 0, "开始借阅日期");
			               Label label_duration= new Label(2, 0, "借书期");
			               
			               ws.addCell(label_bookid);
			               ws.addCell(label_date);
			               ws.addCell(label_duration);
			            
			               for (int i = 0; i < list.size(); i++) {
			                   
			                   Label labelBookId_i= new Label(0, i+1, list.get(i).getBook_id()+"");
			                   Label labelDate_i= new Label(1, i+1, list.get(i).getAppointed_date()+"");
			                   Label labelDuration_i= new Label(2, i+1, list.get(i).getDays()+"");
			                   ws.addCell(labelBookId_i);
			                   ws.addCell(labelDate_i);
			                   ws.addCell(labelDuration_i);
			               }
			             
			              //写进文档
			               wwb.write();
			              // 关闭Excel工作簿对象
			               wwb.close();
			               response.setCharacterEncoding("gbk");
							PrintWriter out = response.getWriter();
							out.print("<script>alert('导出表格成功！'); window.location='stu/Library_Return.jsp' </script>");
							out.flush();
							out.close();
							return;
			        } catch (Exception e) {
			            // TODO Auto-generated catch block
			            e.printStackTrace();
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
