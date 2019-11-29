package dao;

import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.Books_Application;

public class BookAppDao {
	public boolean addApp(Books_Application app) {
		boolean flag=false;
		String sql="insert into books_application values(?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql,app.getStu_id(),app.getBook_id(),app.getAppointed_date(),app.getStatus());
		return flag;
	}
	public Books_Application queryAppById(String id) {
		Books_Application app=null;
		String sql="select * from books_application where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			app=new Books_Application();
			Object[] arr=dblist.get(0);
			app.setStu_id(arr[0].toString());
			app.setBook_id(arr[1].toString());
			app.setAppointed_date(arr[2].toString());
			app.setStatus(arr[3].toString());
		}
		return app;
	}
	public Books_Application queryAppByID(String id1,String id2) {
		Books_Application app=null;
		String sql="select * from books_application where stu_id='"+id1+"'and book_id='"+id2+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			app=new Books_Application();
			Object[] arr=dblist.get(0);
			app.setStu_id(arr[0].toString());
			app.setBook_id(arr[1].toString());
			app.setAppointed_date(arr[2].toString());
			app.setStatus(arr[3].toString());
		}
		return app;
	}
	public List<Books_Application> queryApp(){
		List<Books_Application> AppList=new ArrayList<Books_Application>();
		String sql="select * from books_application";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Books_Application app=new Books_Application();
			app.setStu_id(arr[0].toString());
			app.setBook_id(arr[1].toString());
			app.setAppointed_date(arr[2].toString());
			app.setStatus(arr[3].toString());
			AppList.add(app);
		}
		return AppList;
	}
	public List<Books_Application> queryAppByID(String id){
		List<Books_Application> AppList=new ArrayList<Books_Application>();
		String sql="select * from books_application where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Books_Application app=new Books_Application();
			app.setStu_id(arr[0].toString());
			app.setBook_id(arr[1].toString());
			app.setAppointed_date(arr[2].toString());
			app.setStatus(arr[3].toString());
			AppList.add(app);
		}
		return AppList;
	}
	public int updateApp(Books_Application app) {
		String sql="update books_application set status="+app.getStatus()+" where stu_id='"+app.getStu_id()+"' and book_id='"+app.getBook_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteApp(Books_Application app) {
		String sql="delete from books_application where stu_id='"+app.getStu_id()+"' and book_id='"+app.getBook_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
