package clone.amazon.service;

import java.util.List;

import clone.amazon.domain.Member;
import clone.amazon.repository.MemberRepository;

public class MemberServiceImpl implements MemberService {
	private MemberRepository memberRepository;
	
	@Override
	public Long join(Member member) {
		validateDuplicateMember(member);
		memberRepository.join(member);
		return member.getId();
	}

	private void validateDuplicateMember(Member member) {
		List<Member> findMembers = memberRepository.findByName(member.getName());
		if (!findMembers.isEmpty()) {
			throw new IllegalStateException("이미 존재하는 회원입니다.");
		}
	}

	//회원 전체 조회
	@Override
	public List<Member> findMembers() {
		return memberRepository.findAll();
	}
	
	//회원 한 건 조회
	@Override
	public Member findOne(Long id) {
		return memberRepository.findOne(id);
	}
}
