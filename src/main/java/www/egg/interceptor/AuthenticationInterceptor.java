package www.egg.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	@Override 
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); 
		Object getSession = session.getAttribute("userid");
		String usergrade = String.valueOf(session.getAttribute("usergrade"));
		// Object getGrade = session.getAttribute("usergrade");

		if(getSession==null) { 
			response.sendRedirect(request.getContextPath()+"/"); 

			// System.out.println("preHandle"); 


			/*
			 * if(usergrade.equals("1")) { // 愿�由ъ옄 濡쒓렇�씤�씪 �븣
			 * response.sendRedirect(request.getContextPath()+"/login"); /// 愿�由ъ옄 �솕硫댁쑝濡� �룎�븘媛��씪.
			 * 
			 * System.out.println("�씤利� preHandle 諛쒕룞!!! �쁽�옱 愿�由ъ옄 �젒�냽�엯�땲�떎."); return false; }
			 */


		}
		return super.preHandle(request, response, handler);

	}
}
