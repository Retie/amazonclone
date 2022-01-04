package clone.amazon.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Member {
	//PK
	@Id @GeneratedValue
	public Long id;

	public String name;
	public String email;
	public String password;

}
