package clone.amazon.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clone.amazon.domain.Member;
import clone.amazon.mapper.MemberMapper;
import clone.amazon.web.MemberForm;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public int join(Member member) {
		return memberMapper.join(member);
	}
	
	@Override
	public Boolean validateNameCheck(String name) {
		if(name.isBlank()) {
			/* 뷰에서 예쁘게 나오게 못 고칠까?? */
			throw new IllegalStateException("Enter your name");
		}
		return true;
	}

	@Override
	public Boolean validateEmailCheck(String email) {
		if(email.isBlank()) {
			throw new IllegalStateException("Enter your email");
		}
		return true;
		
		
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
	public String findByName(String name) {
		return memberMapper.findByName(name);
	}
	

}
