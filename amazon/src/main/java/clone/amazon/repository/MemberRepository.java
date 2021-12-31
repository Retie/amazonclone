package clone.amazon.repository;

import java.util.List;

import clone.amazon.domain.Member;

public interface MemberRepository {
	
	void save(Member member);

	Member findOne(Long id);
	
	List<Member> findAll();
	List<Member> findByName(String name);
}
