package dao;

import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.Books_Borrowing;

public class BorrowingDao {
	public boolean addBorrow(Books_Borrowing borrow) {
		boolean flag=false;
		String sql="insert into books_borrowing values(?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql,borrow.getStu_id(),borrow.getBook_id(),borrow.getAppointed_date(),borrow.getDays());
		return flag;
	}
	public Books_Borrowing queryBorrowById(String id) {
		Books_Borrowing borrow=null;
		String sql="select * from books_borrowing where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			borrow=new Books_Borrowing();
			Object[] arr=dblist.get(0);
			borrow.setStu_id(arr[0].toString());
			borrow.setBook_id(arr[1].toString());
			borrow.setAppointed_date(arr[2].toString());
			borrow.setDays(Integer.parseInt(arr[3].toString()));
		}
		return borrow;
	}
	public Books_Borrowing queryBorrowByID(String id1,String id2) {
		Books_Borrowing borrow=null;
		String sql="select * from books_borrowing where stu_id='"+id1+"'and book_id='"+id2+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			borrow=new Books_Borrowing();
			Object[] arr=dblist.get(0);
			borrow.setStu_id(arr[0].toString());
			borrow.setBook_id(arr[1].toString());
			borrow.setAppointed_date(arr[2].toString());
			borrow.setDays(Integer.parseInt(arr[3].toString()));
		}
		return borrow;
	}
	public List<Books_Borrowing> queryBorrow(){
		List<Books_Borrowing> BorrowList=new ArrayList<Books_Borrowing>();
		String sql="select * from books_borrowing";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Books_Borrowing borrow=new Books_Borrowing();
			borrow.setStu_id(arr[0].toString());
			borrow.setBook_id(arr[1].toString());
			borrow.setAppointed_date(arr[2].toString());
			borrow.setDays(Integer.parseInt(arr[3].toString()));
			BorrowList.add(borrow);
		}
		return BorrowList;
	}
	public List<Books_Borrowing> queryBorrowByID(String id){
		List<Books_Borrowing> BorrowList=new ArrayList<Books_Borrowing>();
		String sql="select * from books_borrowing where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Books_Borrowing borrow=new Books_Borrowing();
			borrow.setStu_id(arr[0].toString());
			borrow.setBook_id(arr[1].toString());
			borrow.setAppointed_date(arr[2].toString());
			borrow.setDays(Integer.parseInt(arr[3].toString()));
			BorrowList.add(borrow);
		}
		return BorrowList;
	}
	public int updateBorrow(Books_Borrowing borrow) {
		String sql="update books_borrowing set days="+borrow.getDays()+" where stu_id='"+borrow.getStu_id()+"' and book_id='"+borrow.getBook_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteBorrow(Books_Borrowing borrow) {
		String sql="delete from books_borrowing where stu_id='"+borrow.getStu_id()+"' and book_id='"+borrow.getBook_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
