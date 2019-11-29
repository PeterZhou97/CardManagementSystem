package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CardUserDao;
import entity.CardUser;

/**
 * Servlet Filter implementation class CardFilter
 */
@WebFilter("/CardFilter")
public class CardFilter implements Filter {
	private CardUserDao dao=new CardUserDao();
    /**
     * Default constructor. 
     */
    public CardFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest req=(HttpServletRequest)request;
	    HttpServletResponse res=(HttpServletResponse)response;
	    CardUser user=(CardUser)req.getSession().getAttribute("user");
	    if(user!=null && dao.queryStatus(user.getId()).equals("已销卡")) {
	    	response.setCharacterEncoding("gbk");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('很抱歉，您的卡已注销！请重新注册！'); window.location='../Login.html' </script>");
			out.flush();
			out.close();
			return;
	    }
	    else {
	    	// pass the request along the filter chain
			chain.doFilter(req, res);
	    }
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
