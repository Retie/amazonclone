package clone.amazon.web;

import java.util.List;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import clone.amazon.domain.Member;
import clone.amazon.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Controller
//restcontroller가 아니기 때문에 값은 tostring이 있는 것만 log.info로만 찍힌다!
@RequestMapping("/member")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("")
	public String memberList(Model model) {
		List<Member> members = memberService.findAll();
		log.info(memberService.findAll()+"");
		model.addAttribute("members", members);
		return "members/memberList";
	}
	
	@GetMapping(value = "/join")
	public String joinPage() {
		return "members/memberJoin";
	}
	
	@PostMapping(value = "/join")
	public String join(MemberForm form, BindingResult result) {
		if (result.hasErrors()){
			return "members/memberJoin";
		}
		log.info("join controller");
		
		
		Member member = new Member();
		member.setName(form.getName());

		
		member.setEmail(form.getEmail());
		member.setPassword(form.getPassword());
		
		memberService.join(member);
		return "redirect:/";
	}
	
	@GetMapping(value = "/login")
	public String loginPage() {
		return "members/loginForm";
	}
	

	@GetMapping("/{id}")
	public String findById(Model model, @PathVariable("id") Long id) {
		memberService.findById(id);
		return "members/memberInfo";
	}
	
	@GetMapping("/{name}")
	public void findByName(Model model, @PathVariable("name") String name) {
		memberService.findByName(name);
		System.out.println(memberService.findByName(name) + "found");
	}
	
	/*
	 * @GetMapping("/{name}") public Member findByName(@PathVariable("name") String
	 * name) { return memberService.findByName(name); }
	 */

}
