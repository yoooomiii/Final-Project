package www.egg.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	/*
	 * @Override public boolean preHandle(HttpServletRequest request,
	 * HttpServletResponse response, Object handler) throws Exception { HttpSession
	 * session = request.getSession(); Object getSession =
	 * session.getAttribute("userid"); if(getSession==null) {
	 * response.sendRedirect(request.getContextPath()+"/login");
	 * System.out.println("preHandle!!!"); return false; } return
	 * super.preHandle(request, response, handler); }
	 */

}
