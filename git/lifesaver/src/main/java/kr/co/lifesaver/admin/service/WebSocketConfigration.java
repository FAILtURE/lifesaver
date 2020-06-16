package kr.co.lifesaver.admin.service;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

@Configuration
@EnableWebSocket
public class WebSocketConfigration implements WebSocketConfigurer{

	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(new ReplyEchoHandler(), "/replyEcho").setAllowedOrigins("*").withSockJS();
		
	}

}
