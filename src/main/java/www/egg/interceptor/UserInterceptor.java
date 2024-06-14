package www.egg.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserInterceptor extends HandlerInterceptorAdapter{
	@Override // 프리핸들 (컨트롤러로 가기 전) : 회원이 현재 접속 상태인지 아닌지에 따라 거르는 action
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); // 세션에서 값을 가져온다.
		String userid = (String)session.getAttribute("userid");
		String usergrade = String.valueOf(session.getAttribute("usergrade"));
		if(userid!=null) {
			if(userid.equals("MASTER") && usergrade.equals("1")) { // 관리자 로그인 맞음 
				
				response.sendRedirect(request.getContextPath()+"/login"); /// 로그인으로 돌아가라. 
				System.out.println("유저 preHandle 발동!!! 현재 관리자 접속 상태입니다."); 
				return false;
			}
		}
		System.out.println("유저 preHandle 발동!!! you can enter user page."); 
		return super.preHandle(request, response, handler);
	}
	
}
