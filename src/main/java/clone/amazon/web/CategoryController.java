package clone.amazon.web;

import clone.amazon.domain.Category;
import clone.amazon.domain.item.Item;
import clone.amazon.service.CategoryService;
import clone.amazon.service.ItemService;
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

    @Autowired
    private ItemService itemService;

    @GetMapping("")
    public String categoryMain(@RequestParam Long cateID, Model model) {
        log.info("categoryMain controller ok...");
        log.info("cateID: " + cateID);

        String cateName = categoryService.findByCTID(cateID).getCateName();
        String cateDesc = categoryService.findByCTID(cateID).getCateDesc();
        String cateGroup = categoryService.findByCTID(cateID).getCateGroup();

        List<Category> category = categoryService.findAll();
        List<Item> items = itemService.findAll();

        log.info("items.cateGroup: " + cateGroup);

        model.addAttribute("cateName", cateName);
        model.addAttribute("cateDesc", cateDesc);
        model.addAttribute("cateGroup", cateGroup);
        model.addAttribute("items", items);
        return "orders/categoryMain";
    }


}
