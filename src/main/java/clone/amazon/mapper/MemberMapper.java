package clone.amazon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import clone.amazon.domain.Member;
import clone.amazon.web.MemberForm;

@Mapper
public interface MemberMapper {

	@Insert("INSERT INTO member(name, email, password) VALUES(#{member.name}, #{member.email}, #{member.password})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	@Results(id = "memberMap", value = {
			@Result(property = "phoneNum", column = "phone_num"),
			@Result(property = "regDate", column = "reg_date") })
	int join(@Param("member") Member member);

	
	@Select("SELECT * FROM member")
	List<Member> findAll();

	
	@Select("SELECT * FROM member WHERE id = #{member.id}")
	@Results(id = "memberMap", value = {
			@Result(property = "phoneNum", column = "phone_num"),
			@Result(property = "regDate", column = "reg_date") })
	Member findById(@Param("id") Long id);

	@Select("SELECT email FROM member WHERE email = #{member.email}")
	@ResultMap("memberMap")
	String findByEmail(@Param("email") String email);

	@Select("SELECT password FROM member WHERE email = #{member.email}")
	@ResultMap("memberMap")
	String findPassword(@Param("email") String email, @Param("password") String password);

	@Select("SELECT name FROM member WHERE name = #{member.name}")
	@ResultMap("memberMap")
	String findByName(@Param("name") String name);

	@Select("SELECT * FROM member WHERE email = #{member.email}")
	List<Member> emailCheck(@Param("member") Member member);
	
	
	/*
	 * @Select("SELECT * FROM member WHERE name = #{name}") Member findByName(String
	 * name);
	 */

	/*
	 * 컬럼명과 변수명이 다를 때 매핑 방법
	 * 
	 * @Results({
	 * 
	 * @Result(property="name", column="company_name"),
	 * 
	 * @Result(property="email", column="email") })
	 */

}
