package cat.xebia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by abhin on 7/23/2015.
 */
@Controller
@RequestMapping
public class RegisterController {
    @RequestMapping(method = RequestMethod.GET,value = "/register")
    public String showRegister() {
        return "register";
    }

}