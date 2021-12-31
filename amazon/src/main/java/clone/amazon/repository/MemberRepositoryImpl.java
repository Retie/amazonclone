package clone.amazon.repository;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import clone.amazon.domain.Member;

@Repository
@Mapper
public class MemberRepositoryImpl implements MemberRepository {
	
	private static Map<Long, Member> store = new ConcurrentHashMap<>();

	@Override
	public void save(Member member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member findOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
