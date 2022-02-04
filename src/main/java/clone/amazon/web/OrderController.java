package clone.amazon.web;

import clone.amazon.domain.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/orders")
@Slf4j
public class OrderController {

    @GetMapping("")
    public String categoryMain(Model model) {
        log.info("categoryMain controller ok...");
        model.addAttribute("name", "Toys and Games!!");
        return "/orders/categoryMain";
    }


}
