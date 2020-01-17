package edu.multi.kr;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public String user = "kingsmile";
	public String passwd = "1004";
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		PrintWriter pw = response.getWriter();
		System.out.println(id);
		pw.write("<html><head><title>print</title></head></html>");
		pw.write("<body>");
		if(!id.equals(user)) {
			pw.write("틀린 정보 입니다.");
			pw.write("<br><a href='html/loginForm.html' style='border:1px solid gray;'>Login</a>");
		}else {
			String pwd = request.getParameter("pwd");
			if(pwd.equals(passwd)) {
				System.out.println(id+" : "+pwd);
				pw.write("<body><h1>ID: "+id+"<br></h1>");
				pw.write("pw: "+pwd);
			}
			else {
				pw.write("틀린 정보 입니다.");
				pw.write("<br><a href='html/loginForm.html' style='border:1px solid gray;'>Login</a>");
			}
		}
		pw.write("</body></html>");
		pw.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response); // default 를 get으로
	}

}
