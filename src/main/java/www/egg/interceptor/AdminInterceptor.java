package www.egg.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter{
	@Override // 프리핸들 (컨트롤러로 가기 전) : 회원이 현재 접속 상태인지 아닌지에 따라 거르는 action
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); // 세션에서 값을 가져온다.
		Object getSession = session.getAttribute("userid");
		// Object getGrade = session.getAttribute("usergrade");
		if(getSession==null) { // 로그인한 사람 아님
			response.sendRedirect(request.getContextPath()+"/"); /// 로그인 화면으로 돌아가라. 
			
			// System.out.println("preHandle 발동!!!"); 
			return false;
		}
		
		return super.preHandle(request, response, handler);
	}
	
}
