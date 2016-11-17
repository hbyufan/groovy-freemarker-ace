package com.moyobar.app.controller.wechat

import com.moyobar.app.entity.wechat.Account
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

/**
 * Created by Rocky on 11/17/16.
 */
@Controller
@RequestMapping("wechat/account")
class AccountController {

    @RequestMapping()
    def index(Account account){
        println("account")
        "wechat/account/list"
    }
}
