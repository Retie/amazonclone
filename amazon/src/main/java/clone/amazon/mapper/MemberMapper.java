package clone.amazon.mapper;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.*;

import clone.amazon.domain.Member;

@Mapper
public interface MemberMapper {
	@Insert("INSERT INTO member(name, email, password) VALUES(#{member.name}, #{member.email}, #{member.password})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int create(@Param("member") Member member);
	
	@Select("SELECT * FROM member")
	//@Result(property="자바 객체 property명", column="db 테이블 컬럼 명")
	List<Member> findAll();
	
	@Select("SELECT * FROM member WHERE id = #{id}")
	//@Result(property="자바 객체 property명", column="db 테이블 컬럼 명")
	Optional<Member> findById(@Param("id") String id);
	
	@Select("SELECT * FROM member WHERE email = #{email}")
	@ResultMap("MemberMap")
	Optional<Member> findByEmail(@Param("email") String email);
	

}