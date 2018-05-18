package ro.ionutbogdan.cinema.WEB;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/movies")
public class MoviesController {

    @RequestMapping("")
    public ModelAndView movie() {
        return new ModelAndView("movies");
    }

    @RequestMapping("/movies")
    public String movies() {
        return "/";
    }
}
