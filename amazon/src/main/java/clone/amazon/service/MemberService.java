package clone.amazon.service;

import java.util.List;


import clone.amazon.domain.Member;

public interface MemberService {
	
	
	public Member join(Member member);

	public List<Member> findMembers();

	public Member findOne(Long id);
}
