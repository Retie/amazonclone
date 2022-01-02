package clone.amazon.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import clone.amazon.domain.Member;

@Mapper
@Repository
public interface MemberRepository {
	
	//삽입, 삭제, 갱신의 리턴타입은 무조건 int
	public int join(Member member);

	public int deleteMember();
	
	public List<Member> findAll();

	public Member findOne(Member member);
	
	public List<Member> findByName(String name);
	
	public int updateMember(Member member);


}
