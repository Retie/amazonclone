package clone.amazon.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import clone.amazon.domain.Member;
import clone.amazon.mapper.MemberMapper;
import clone.amazon.service.MemberService;

@RestController
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@PostMapping
	public Member join(@RequestBody Member member) {
		memberService.join(member);
		return member;
	}
	
	@GetMapping("")
	public List<Member> findAll(){
		return memberService.findAll();
	}
	
	/*
	 * @GetMapping("/{id}") public Member findById(@PathVariable("id") long id) {
	 * return memberService.findById(id); }
	 */
	
}
