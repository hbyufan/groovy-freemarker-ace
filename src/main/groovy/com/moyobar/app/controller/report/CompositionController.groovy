package com.moyobar.app.controller.report

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

/**
 * Created by Rocky on 2017/6/8.
 */
@Controller
@RequestMapping("report/composition")
class CompositionController {

    @RequestMapping
    def index(){
        "report/composition/index"
    }
}
