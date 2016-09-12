package com.moyobar.app.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod

/**
 * Created by Rocky on 9/12/16.
 */
@Controller
class LoginController {

    @RequestMapping(value = "login",method = RequestMethod.GET)
    def login(){
        println("login")
        "login"
    }
}
