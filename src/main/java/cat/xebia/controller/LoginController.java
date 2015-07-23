package cat.xebia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by abhin on 7/21/2015.
 */

@Controller
@RequestMapping("")
public class LoginController {
    @RequestMapping(method = RequestMethod.GET, value = "/custom_login")
    public String showLogin() {
        return "login";
    }
}