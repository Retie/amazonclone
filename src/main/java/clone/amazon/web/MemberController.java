package clone.amazon.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String join(HttpServletRequest request, HttpServletResponse response) {

		log.info("joinController ok...");

		Member member = new Member();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if(memberService.validateNameCheck(name)) {
			member.setName(name);
		}

		if(memberService.validateEmailCheck(email)) {
			
		}
		
		member.setEmail(email);
		member.setPassword(password);
		
		memberService.join(member);
		
		/*
		 * if (result.hasErrors()){ return "members/memberJoin"; }
		 */
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
