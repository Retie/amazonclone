package clone.amazon.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

	@GetMapping(value = "/")
	public String jspCheck(Model model) {
		System.out.println("index.jsp test");
		model.addAttribute("name", "WebController");
		return "index";
	}
	
	@GetMapping(value = "/main")
	public String main(Model model) {
		System.out.println("main");
		return "main";
	}
}
