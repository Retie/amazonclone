package clone.amazon.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import clone.amazon.domain.Member;
import clone.amazon.repository.MemberRepository;

@SpringBootTest
@Transactional
public class MemberServiceTest {

	@Autowired
	MemberService memberServiceImpl;
	@Autowired
	MemberRepository memberRepositoryImpl;

	@Test
	public void 회원가입() throws Exception {
		// Given - 멤버 "retie"를 생성
		Member member = new Member();
		member.setName("retie");
		
		System.out.println(member);
		
		// When - "retie"를 담은 객체를 회원가입
		Member savedMember = memberServiceImpl.join(member);
		
		System.out.println(savedMember.getName());
		
		// Then - 객체와 저장된 멤버가 같은지 검증
		assertEquals(member, memberRepositoryImpl.findOne(savedMember));
		
	}

	/*
	 * @Test(expected = IllegalStateException.class) public void 중복_회원_예외() throws
	 * Exception { // Given - 이름이 같은 회원 둘 생성
	 * 
	 * // When - 둘다 회원가입했을 때
	 * 
	 * // Then fail("예외 발생");
	 * 
	 * }
	 */

}
