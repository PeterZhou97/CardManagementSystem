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

import entity.LibraryUser;

/**
 * Servlet Filter implementation class LibraryFilter
 */
@WebFilter("/LibraryFilter")
public class LibraryFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LibraryFilter() {
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
	    LibraryUser user=(LibraryUser) req.getSession().getAttribute("lib_user");
	    if(user==null) {
	    	res.setCharacterEncoding("gbk");
			PrintWriter out = res.getWriter();
			out.print("<script>alert('很抱歉，您的账号已注销！请重新注册！'); window.location='stu/Library_Login.html' </script>");
			out.flush();
			out.close();
			return;
	     }
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
