package calendar.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calendar.db.CalendarBean;
import calendar.db.CalendarDAO;


public class CalendarAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CalendarDAO caldao = new CalendarDAO();		
		CalendarBean cal = new CalendarBean();
		String ad;
		int check = 0;
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String title = request.getParameter("title");

		System.out.println("id : " + id);//id = title
		System.out.println("name : " + name);//name = sessionid
		System.out.println("start : " + start);//start
		System.out.println("end : " + end);//end
		System.out.println("title : " + title);//title = content
	
		ad = caldao.getadmindate(name); // admin
		
		System.out.println("admin : " + ad);
		
		cal.setAdmin(ad);
		cal.setId(id);
		cal.setName(name);
		cal.setTitle(title);
		cal.setStart(start);
		cal.setEnd(end);

		
		check = caldao.add(cal);
		
		if(check!=0)
			System.out.println("성공");

		return null;
	}

}
