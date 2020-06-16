package kr.co.lifesaver.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import kr.co.lifesaver.admin.service.impl.SessionNames;


public class ReplyEchoHandler extends TextWebSocketHandler {
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	Map<String, WebSocketSession> userSessions = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		System.out.println("afterConnectionEstablished:" + session);
		sessions.add(session);
		String senderId = getId(session);
		userSessions.put(senderId, session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("handleTextMessage:" + session + " : " + message);
		String senderId = getId(session);
		for (WebSocketSession sess: sessions) {
			sess.sendMessage(new TextMessage(senderId + ": " + message.getPayload()));
		}
		String msg = message.getPayload();
		if (StringUtils.isNotEmpty(msg)) {
			String[] strs = msg.split(",");
			if (strs != null && strs.length == 4) {
				String cmd = strs[0];
				String replyWriter = strs[1];
				String boardWriter = "admin";
				String bno = strs[3];
				
				WebSocketSession boardWriterSession = userSessions.get(boardWriter);
				if ("reply".equals(cmd) && boardWriterSession != null) {
					TextMessage tmpMsg = new TextMessage("반응");
					boardWriterSession.sendMessage(tmpMsg);
				}
			}
		}
		
		
		
	}

	private String getId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		User loginUser = (User)httpSession.get(SessionNames.LOGIN);
		if (null == loginUser)
			return session.getId();
		else
			return loginUser.getUid();
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("afterConnectionEstablished:" + session + ":" + status);
	}
}
