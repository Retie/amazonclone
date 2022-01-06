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
import clone.amazon.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/member")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;

	@PostMapping
	public Member join(@RequestBody Member member) {
		memberService.join(member);
		return member;
	}

	@GetMapping("")
	public List<Member> findAll() {
		return memberService.findAll();
	}

	@GetMapping("/{id}")
	public Member findById(@PathVariable("id") Long id) {
		log.info("" + memberService.findById(id));
		return memberService.findById(id);
	}
	
	/*
	 * @GetMapping("/{name}") public Member findByName(@PathVariable("name") String
	 * name) { return memberService.findByName(name); }
	 */

}
