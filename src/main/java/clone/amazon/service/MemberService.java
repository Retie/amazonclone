package clone.amazon.service;

import java.util.List;

import clone.amazon.domain.Member;
import clone.amazon.web.MemberForm;

public interface MemberService {
	
	int join(Member member);
	
	List<Member> findAll();
	
	Member findById(Long id);

	String findByName(String name);
	

}
