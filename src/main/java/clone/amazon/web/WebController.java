package clone.amazon.web;

import clone.amazon.domain.Category;
import clone.amazon.service.CategoryService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@Slf4j
public class WebController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping(value = "/")
	public String jspCheck(Model model) {
		System.out.println("index.jsp test");

		List<Category> category = categoryService.findAll();
		model.addAttribute("name", "WebController");
		// 작성중 //
		model.addAttribute("category", category);

		log.info("category: " + category);

		return "index";
	}
	
	@GetMapping(value = "/main")
	public String main(Model model) {
		System.out.println("main");
		return "main";
	}
}
