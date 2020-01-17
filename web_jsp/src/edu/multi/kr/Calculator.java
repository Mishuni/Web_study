package edu.multi.kr;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calculator
 */
@WebServlet("/Calculator")
public class Calculator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = request.getParameter("operator");
		System.out.println(op);
		PrintWriter pw = response.getWriter();
		pw.write("<html><head><title>result</title></head><body>");
		String url = "jsp/ex05_practice.jsp";
		if(op==null) {
			pw.write("<b>Choose your operation </b>");
			pw.write("<a href='"+url+"'>Back</a>");
		}
		else {
			int result;
			int a = Integer.parseInt(request.getParameter("op1"));
			int b = Integer.parseInt(request.getParameter("op2"));
			if(op.equals("plus")) {
				result = a + b;
			}
			else if(op.equals("minus")) {
				result = a - b;
			}
			else {
				result = a * b ;
			}
			pw.write("<b>The result is </b>"+result);
			pw.write("<br><a href='"+url+"'>Back</a>");
			pw.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
