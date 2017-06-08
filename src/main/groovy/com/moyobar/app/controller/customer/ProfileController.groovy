package com.moyobar.app.controller.customer

import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.RequestMapping

/**
 * Created by Rocky on 2017/6/8.
 */
@Controller
@RequestMapping("customer/profile")
class ProfileController {

    @RequestMapping()
    def index(Model model){
        "customer/profile/index"
    }

}
