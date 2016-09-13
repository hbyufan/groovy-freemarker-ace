package com.moyobar.app

import com.moyobar.app.entity.Permission
import com.moyobar.app.service.PermissionService
import com.moyobar.app.tags.MenusMethodModel
import freemarker.template.Configuration
import org.springframework.boot.CommandLineRunner
import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.context.ApplicationContext
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.RequestMapping

import javax.annotation.Resource
import java.util.stream.Stream

@SpringBootApplication
@Controller
class DemoApplication implements CommandLineRunner{

	@Resource PermissionService permissionService
	@Resource Configuration freeMarkerConfiguration

	static void main(String[] args) {
		SpringApplication.run DemoApplication, args
	}



	@RequestMapping("index")
	def index(Model model){
		println("index")

		permissionService.menus.each {println it.name}

		model.addAttribute("message","Groovy Freemarker")
		"index"
	}

	@Override
	void run(String... args) throws Exception {
		freeMarkerConfiguration.setSharedVariable("menus",new MenusMethodModel())
	}
}
