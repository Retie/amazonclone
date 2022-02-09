package clone.amazon.web;

import clone.amazon.domain.Category;
import clone.amazon.service.CategoryService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/orders")
@Slf4j
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("")
    public String categoryMain(@RequestParam Long cateID, Model model) {
        log.info("categoryMain controller ok...");
        log.info("cateID: " + cateID);

        String cateName = categoryService.findByCTID(cateID).getCateName();
        String cateDesc = categoryService.findByCTID(cateID).getCateDesc();
        List<Category> category = categoryService.findAll();

        log.info("cateName: " + cateName);
        log.info("cateDesc: " + cateDesc);
        log.info("category: " + category);

        model.addAttribute("cateName", cateName);
        model.addAttribute("cateDesc", cateDesc);
        model.addAttribute("category", category);
        return "orders/categoryMain";
    }


}
