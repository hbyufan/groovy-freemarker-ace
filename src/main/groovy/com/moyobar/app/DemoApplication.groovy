package com.moyobar.app

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.RequestMapping

@SpringBootApplication
@Controller
class DemoApplication {

	static void main(String[] args) {
		SpringApplication.run DemoApplication, args
	}

	@RequestMapping("index")
	def index(Model model){
		println("index")
		model.addAttribute("message","Groovy Freemarker")
		"index"
	}
}
