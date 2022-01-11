//실질적으로 데이터를 주고받는 클래스

package clone.amazon.domain;

import java.sql.Timestamp;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class MemberAccount {
	//PK
	@Id @GeneratedValue
	public Long id;

	public String name;
	public String email;
	public String password;
	public String pwdCheck;
	
	//public String phoneNum;
	public Grade grade;
	//public String address;
	public Timestamp regDate;
	//public boolean phoneCerti;
	
}
