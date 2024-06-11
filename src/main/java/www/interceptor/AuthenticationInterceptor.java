package www.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); // 세션에서 값을 가져온다.
		Object getSession = session.getAttribute("userid");
		if(getSession==null) { // 로그인한 사람 아님
			response.sendRedirect(request.getContextPath()+"/"); /// 처음 화면으로 돌아가라. 
			return false;
		}
		return super.preHandle(request, response, handler);
	}

}
