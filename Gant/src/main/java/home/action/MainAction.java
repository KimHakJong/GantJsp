package home.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.db.Board;
import board.db.BoardDAO;
import net.db.MembersDAO;


public class MainAction implements Action{
   public ActionForward execute(HttpServletRequest request, 
         HttpServletResponse response) throws ServletException, IOException {
	   
	   
	   HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		MembersDAO mdao = new MembersDAO();
		mdao.getProfileimg(id);
		
		session.setAttribute("profileimg", mdao.getProfileimg(id));
		session.setAttribute("name", mdao.getName(id));
   
      if(id == null) {//session에 id값이 존재하지 않는다면 로그인 화면으로 이동
      response.setContentType("text/html;charset=utf-8");
      PrintWriter out = response.getWriter();
      out.println("<script>");
      out.println("alert('로그인을 해주세요');"); 
      out.println("location.href='login.net';");
      out.println("</script>");
      out.close();
      return null;
      }
   
        // 공지사항 시작 
      
      
      BoardDAO boarddao = new BoardDAO();
      List<Board> boardNoticelist = new ArrayList<Board>();
       // 1페이지에 10개의 목록을 보여줄 것이다.
      int page = 1; // 보여줄 페이지
      int limit = 5; //한페이지에 보여줄 게시판 목록의 수
      
      if(request.getParameter("page") != null) {
         page = Integer.parseInt(request.getParameter("page"));
      }
            
      System.out.println("넘어온 페이지 =" + page);
      
      //게시물 갯수
      int listcount = 0 ;
      
      //총 리스트 수를 받아옵니다.
      listcount = boarddao.getNoticeListCount();
      
      //공지게시글 리스트
      boardNoticelist =boarddao.getBoardNoticeList(page,limit);
                  
      //페이지 수 구하기 -> int는 나머지 숫자를 없앤다.
      int maxpage = (listcount + limit - 1) / limit;
      System.out.println("총 페이지수 =" + maxpage);
      
      
      //startpage 는 시작페이지 페이징 처리하는 숫자의 처음숫자를 뜻한다. 1에서 30까지 있으면 너무 많으니까 나눈것이다. -> 10개씩만 보이게 할것이다.
      //예를들어 <<1 2 3 4 5 6 .. >> , <<..5 6 7 8 9 10 ..>> 이런식으로 말이다. 여기서 startpage는 1과 5이다
                                                                 // page      1        2        3       4       
      int startpage = ((page-1) / 10) * 10 + 1 ;           //          1        2        3       4
      System.out.println("현재 페이지에 보여줄 시작 페이지 :" + startpage);
      
      //마지막 페이지
      int endpage = startpage + 10 - 1 ;                     //           10        11     12       13   
      System.out.println("현재 페이지에 보여줄 마지막 페이지 :" + endpage); 
      
      
      //만약 endpage가 maxpage가 크다면 endpage을 maxpageg로 한다.
      if(endpage > maxpage)
         endpage = maxpage;
      
      
      
          request.setAttribute("page",page); // 현재 페이지 수
          
          request.setAttribute("maxpage",maxpage); // 최대 페이지 수 
          
          
          // 현재 페이지에 표시할 첫 페이지 수
         request.setAttribute("startpage",startpage);
         
         // 현재 페이지에 표시할 끝 페이지 수
         request.setAttribute("endpage",endpage);
         
         // 총 글의 수 
         request.setAttribute("listcount",listcount);
         
      // 해당 페이지의 공사항글 목록을 갖고 있는 리스트
         request.setAttribute("boardNoticelist",boardNoticelist);
         
               
         request.setAttribute("limit",limit);
       
   
      // 공지사항 끝  
      
      
      ActionForward forward = new ActionForward();
      forward.setRedirect(false);
      forward.setPath("home/main2.jsp");
      return forward;
      
   }
}