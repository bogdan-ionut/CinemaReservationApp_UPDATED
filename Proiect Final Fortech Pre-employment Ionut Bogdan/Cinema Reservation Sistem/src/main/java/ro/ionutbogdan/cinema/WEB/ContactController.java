package ro.ionutbogdan.cinema.WEB;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Contact.html")
public class ContactController {
    @RequestMapping("")
    public ModelAndView contact() {
        return new ModelAndView("Contact");
    }

    @RequestMapping("/Contact")
    public String Contact() {
        return "/";
    }

}
