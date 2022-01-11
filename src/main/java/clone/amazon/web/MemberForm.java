//회원가입 시 데이터를 주고받는 클래스

package clone.amazon.web;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberForm {
	private Long id;

	private String name;
	private String email;
	private String password;
	private String pwdCheck;

	

}
