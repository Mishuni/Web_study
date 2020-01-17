package com.sds.date;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serverDate")
// servlet annotation
public class ServletDate extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doProcess(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doProcess(req, res);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//System.out.println("Hello Servlet");
		res.setCharacterEncoding("euc-kr"); // 한글 깨짐 처리
		Calendar c = Calendar.getInstance();
		// Calendar 는 new 로 객체 생성 불가
		// 시스템이 가지고 있는 날짜를 얻어 오기
		
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int minute = c.get(Calendar.MINUTE);
		int second = c.get(Calendar.SECOND);
		
		PrintWriter pw = res.getWriter();
		pw.write("<html><head><title>서버측 시간을 얻어서 씁니다.</title></head>");
		pw.write("<body><h1>Hello Servlet</h1>");
		pw.write("<h2>현재 시간은 ");
		pw.write(Integer.toString(hour)+"시 ");
		pw.write(Integer.toString(minute)+"분 ");
		pw.write(Integer.toString(second)+"초 ");
		pw.write("</h2></body></html>");
		pw.close();
	}
	
	
}
