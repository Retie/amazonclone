package clone.amazon.service;

import java.util.List;

import clone.amazon.domain.Member;
import clone.amazon.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberMapper memberMapper;
	
	@Override
	public int join(Member member) {
		return memberMapper.join(member);
	}

	@Override
	public List<Member> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
