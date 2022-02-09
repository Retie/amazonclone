package clone.amazon.web;

import clone.amazon.domain.Category;
import clone.amazon.domain.Member;
import clone.amazon.service.OrderService;
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
public class OrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping("")
    public String categoryMain(@RequestParam Long cateID, Model model) {
        log.info("categoryMain controller ok...");
        log.info("cateID: " + cateID);

        String cateName = orderService.findByCTID(cateID).getCateName();
        String cateDesc = orderService.findByCTID(cateID).getCateDesc();
        List<Category> category = orderService.findAll();

        log.info("cateName: " + cateName);
        log.info("cateDesc: " + cateDesc);
        log.info("category: " + category);

        model.addAttribute("cateName", cateName);
        model.addAttribute("cateDesc", cateDesc);
        model.addAttribute("category", category);
        return "orders/categoryMain";
    }


}
