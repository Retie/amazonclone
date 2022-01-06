package clone.amazon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import clone.amazon.domain.Member;

@Mapper
public interface MemberMapper {

	@Insert("INSERT INTO member(name, email, password) VALUES(#{member.name}, #{member.email}, #{member.password})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int join(@Param("member") Member member);

	@Select("SELECT * FROM member")
	List<Member> findAll();

	@Select("SELECT * FROM member WHERE id = #{id}")
	@Results(id = "memberMap", value = {
			@Result(property = "phoneNum", column = "phone_num"),
			@Result(property = "regDate", column = "reg_date") })
	Member findById(@Param("id") Long id);

	@Select("SELECT * FROM member WHERE name = #{name}")
	@ResultMap("memberMap")
	Member findByName(@Param("name") String name);

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
