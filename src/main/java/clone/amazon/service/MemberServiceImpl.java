package clone.amazon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clone.amazon.domain.Member;
import clone.amazon.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public int join(Member member) {
		return memberMapper.join(member);
	}

	@Override
	public List<Member> findAll() {
		return memberMapper.findAll();
	}

	@Override
	public Member findById(Long id) {
		return memberMapper.findById(id);
	}
	
	@Override
	public Member findByName(String name) {
		return memberMapper.findByName(name);
	}

}