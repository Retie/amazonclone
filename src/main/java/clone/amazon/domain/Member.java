//멤버의 모든 정보 저장 (Only Setter)

package clone.amazon.domain;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Member {
	//PK
	@Id @GeneratedValue
	public Long id;

	public String name; //not null
	public String email; //not null
	public String password; // not null
	
	public String phoneNum;
	public Grade grade;
	public String address;
	public Timestamp regDate;
	public boolean phoneCerti;
	
	//ToString은 나중에 지우기
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", phoneNum="
				+ phoneNum + ", grade=" + grade + ", address=" + address + ", regDate=" + regDate + ", phoneCerti="
				+ phoneCerti + "]";
	}
	
}
