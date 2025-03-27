package com.example.contactform.Controller;

import com.example.contactform.model.ContactForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class ContactFormController {

    @GetMapping("/contact")
    public String showForm(Model model) {
        model.addAttribute("contactForm", new ContactForm());
        return "contact";
    }



    @PostMapping("/contact/submit")
    public String submitForm(@ModelAttribute ContactForm contactForm, Model model) {
        model.addAttribute("contactForm", contactForm);
        return "result";
    }

    @PostMapping("contact/about")
    public String AboutUs(@ModelAttribute ContactForm contactForm, Model model) {
        model.addAttribute("contactForm", contactForm);
        return "about";
    }
}
