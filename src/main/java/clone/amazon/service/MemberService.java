package clone.amazon.service;

import java.util.List;

import clone.amazon.domain.Member;
import clone.amazon.web.MemberForm;

public interface MemberService {
	
	int join(Member member);
	
	//join시 각 property의 유효성 검증
	Boolean validateNameCheck(String name);
	Boolean validateEmailCheck(String email);
	
	List<Member> findAll();
	
	Member findById(Long id);

	String findByName(String name);
	

}
