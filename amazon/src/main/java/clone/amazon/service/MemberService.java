package clone.amazon.service;

import java.util.List;

import clone.amazon.domain.Member;

public interface MemberService {
	
	int join(Member member);
	
	List<Member> findAll();
	
	Member findByName(String name);
	
}
