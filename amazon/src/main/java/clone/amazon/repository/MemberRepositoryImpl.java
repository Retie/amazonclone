package clone.amazon.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import clone.amazon.domain.Member;
import lombok.Setter;

public class MemberRepositoryImpl implements MemberRepository {
	
	@Setter
	private SqlSession sqlSession;
	
	public MemberRepositoryImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	//삽입, 삭제, 갱신의 리턴타입은 무조건 int
	@Override
	public int join(Member member) {
		return sqlSession.insert("MemberMapper.join");
	}

	@Override
	public int deleteMember() {
		return sqlSession.delete("MemberMapper.deleteMember");
	}

	@Override
	public List<Member> findAll() {
		return sqlSession.selectList("MemberMapper.findAll");
	}

	@Override
	public Member findOne(Member member) {
		return sqlSession.selectOne("MemberMapper.findOne");
	}
	
	@Override
	public List<Member> findByName(String name) {
		return sqlSession.selectOne("MemberMapper.findByName");
	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.update("MemberMapper.updateMember");
		
	}

}
