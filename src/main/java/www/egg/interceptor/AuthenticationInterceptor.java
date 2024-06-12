package www.egg.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	@Override // 프리핸들 (컨트롤러로 가기 전) : 회원이 현재 접속 상태인지 아닌지에 따라 거르는 action
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); // 세션에서 값을 가져온다.
		Object getSession = session.getAttribute("userid");
		if(getSession==null) { // 로그인한 사람 아님
			response.sendRedirect(request.getContextPath()+"/loginForm"); /// 처음 화면으로 돌아가라. 
			System.out.println("preHandle 발동!!!");
			return false;
		}
		return super.preHandle(request, response, handler);
	}
	
	   // 포스트핸들 (컨트롤러 처리가 끝남. model에 넘겨줄 인자가 있는 경우
	  // 그걸 포스트핸들이 컨트롤러로부터 전달받아서 view로 넘기기 전 마지막으로 조작하거나 참조할 수 있다.)
	   

}
