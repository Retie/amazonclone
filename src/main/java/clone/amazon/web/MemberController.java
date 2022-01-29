package clone.amazon.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		log.info(memberService.findAll() + "");
		model.addAttribute("members", members);
		return "members/memberList";
	}

	@ResponseBody
	@PostMapping(value = "/joinCheck")
	public String joinCheck(Member member) {

		log.info("joinCheck Controller ok...");

		//SELECT * FROM member WHERE email = #{email};
		List<Member> savedMember = memberService.emailCheck(member);
		String message = null;

		if (savedMember.isEmpty()) {
			message = "success";
		} else {
			message = "fail";
		}

		log.info("message: " + message);
		return message;
	}

	@GetMapping(value = "/join")
	public String joinPage() {
		return "members/memberJoin";
	}

	@PostMapping(value = "/join")
	public @ResponseBody
	String join(HttpServletRequest request, HttpServletResponse response) {

		log.info("joinController ok...");

		Member member = new Member();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(" name :::: " + name);
		System.out.println(" email :::: " + email);
		System.out.println(" password :::: " + password);
		member.setName(name);
		member.setEmail(email);
		member.setPassword(password);

		memberService.join(member);

		/*
		 * if (result.hasErrors()){ return "members/memberJoin"; }
		 */
		return "success";
	}


	@GetMapping(value = "/login")
	public String loginPage() {
		return "members/memberLogin";
	}

	@ResponseBody
	@PostMapping(value = "/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		log.info("loginController ok...");

		HttpSession session = request.getSession();

		String email = request.getParameter("email"); //값은 받음
		String password = request.getParameter("password");
		

		//query에서 입력받은 이메일과 매칭되는 이메일을 찾아서 savedEmail에 저장
		String savedEmail = memberService.findByEmail(email);
		log.info("email: " + email + ", savedEmail: " + savedEmail);

		//savedEmail의 비번을 찾아 savedPassword에 저장
		//SELECT password FROM member WHERE email = #{member.email}
		String savedPassword = memberService.findPassword(savedEmail);
		log.info("password: " + password + ", savedPassword: " + savedPassword);

		//savedEmail의 이름을 찾아 savedName에 저장
		String savedName = memberService.findName(savedEmail);
		log.info("savedName: " + savedName);

		//success/fail -> ajax 처리
		if (email.equals(savedEmail) && password.equals(savedPassword)) {
			session.setAttribute("sessionName", savedName);
			session.setAttribute("sessionEmail", savedEmail);
			log.info("session.setAttribute ok... " + (String)session.getAttribute("sessionEmail"));
			log.info("login success");
			return "success";
		} else if (!password.equals(savedPassword)) {
			return "plzCheckPwd"; //성공 확인
		} else {
			return "fail";
		}
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
