package com.example.contactform.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class PageController {

    @GetMapping("/about")
    public String about() {
        return "about"; // This will resolve to /WEB-INF/jsp/about.jsp
    }

    // Other mappings for Home, Menu, Contact
}
