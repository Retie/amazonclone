package clone.amazon.service;

import java.util.ArrayList;
import java.util.List;

import clone.amazon.domain.Member;

public interface MemberService {
	
	int join(Member member);
	
	List<Member> findAll();
	
	Member findById(Long id);

	String findByName(String name);
	
}
