package clone.amazon.domain;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Member {
	//PK
	public Long id;

	public String name;
	public String email;
	public String password;
	
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}
	
	
}
