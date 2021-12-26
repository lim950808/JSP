package ch17_etc;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator {
	PasswordAuthentication pa;

	public MyAuthentication() {
		
		String id = "lim950808@naver.com"; //가입한 본인 이메일 아이디
		String pw = "Dlawodjr0808"; //가입한 본인 이메일 비밀번호
		
		pa = new PasswordAuthentication(id, pw);
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
