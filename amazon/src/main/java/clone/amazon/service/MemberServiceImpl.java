package clone.amazon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clone.amazon.domain.Member;
import clone.amazon.repository.MemberRepository;
import lombok.RequiredArgsConstructor;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private final MemberRepository memberRepositoryImpl;
	
	public MemberServiceImpl(MemberRepository memberRepositoryImpl) {
		super();
		this.memberRepositoryImpl = memberRepositoryImpl;
	}
	
	@Autowired
	Member member = new Member();
	
	@Override
	public Member join(Member member) {
		//validateDuplicateMember(member);
		memberRepositoryImpl.join(member);
		return member;
	}

	private void validateDuplicateMember(Member member) {
		List<Member> findMembers = memberRepositoryImpl.findByName(member.getName());
		if (!findMembers.isEmpty()) {
			throw new IllegalStateException("이미 존재하는 회원입니다.");
		}
	}

	//회원 전체 조회
	@Override
	public List<Member> findMembers() {
		return memberRepositoryImpl.findAll();
	}
	
	//회원 한 건 조회
	@Override
	public Member findOne(Long id) {
		return memberRepositoryImpl.findOne(member);
	}
}
