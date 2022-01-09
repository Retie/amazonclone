package clone.amazon.domain;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class MemberAccount {
	//PK
	public Long id;

	public String name;
	public String email;
	public String password;
	
	public String phoneNum;
	public Grade grade;
	public String address;
	public Timestamp regDate;
	public boolean phoneCerti;
	
}
