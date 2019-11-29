package dao;

import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.Book;

public class BookDao {
	public boolean addBook(Book book) {
		boolean flag=false;
		String sql="insert into book values(?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql,book.getId(),book.getName(),book.getLocation(),book.getStorage());
		return flag;
	}
	public Book queryBookById(String id) {
		Book book=null;
		String sql="select * from book where book_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			book=new Book();
			Object[] arr=dblist.get(0);
			book.setId(arr[0].toString());
			book.setName(arr[1].toString());
			book.setLocation(arr[2].toString());
			book.setStorage(Integer.parseInt(arr[3].toString()));
			
		}
		return book;
	}
	public List<Book> queryBook(){
		List<Book> Booklist=new ArrayList<Book>();
		String sql="select * from book";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Book book=new Book();
			book.setId(arr[0].toString());
			book.setName(arr[1].toString());
			book.setLocation(arr[2].toString());
			book.setStorage(Integer.parseInt(arr[3].toString()));
			Booklist.add(book);
		}
		return Booklist;
	}
	public int updateBook(Book book) {
		String sql="update book set book_name='"+book.getName()+"',location='"+book.getLocation()+"',storage="+book.getStorage()+" where book_id='"+book.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteBook(Book book) {
		String sql="delete from book where book_id='"+book.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
