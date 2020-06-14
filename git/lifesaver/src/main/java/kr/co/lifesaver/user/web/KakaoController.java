package kr.co.lifesaver.user.web;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.lifesaver.user.service.KakaoAPI;

  

@Controller
public class KakaoController {
	
	KakaoAPI kakao = new KakaoAPI();

//	@RequestMapping(value = "/login") // 여기서의 / = kakaoLogin/
//									// 루트경로로 들어가지지 않는 이유는 webapp 밑에 만들었기 때문!
//	public String index() {
//		System.out.println("로그인 전입니다.");
//		return "/login/login";
//	}

	@RequestMapping(value = "/kakaologin")
	public String login(@RequestParam("code") String code, HttpSession session) {
		String access_token = kakao.getAccessToken(code);

		System.out.println("로그인 성공 - 액세스 토큰 : " + access_token);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_token);
		System.out.println("login Controller : " + userInfo);

		// 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		if (userInfo.get("email") != null) {
			session.setAttribute("id", userInfo.get("email"));
			session.setAttribute("access_token", access_token);
		}
		return "main"; // 로그인 대신에 메인으로 이동
	}
}
