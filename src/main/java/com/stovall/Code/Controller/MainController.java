package com.stovall.Code.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
	@Controller
	public class MainController {
		
		@RequestMapping("/")
		public String index() {
			return "Index.jsp";
		}
		
//		this the process form
		@RequestMapping(path="/processForm", method=RequestMethod.POST)
		public String processingForm(@RequestParam(value="password") String password , RedirectAttributes redirectAttributes) {
			if(password.equals("Bushido")) {
				return "redirect:/code";
			}else {
				redirectAttributes.addFlashAttribute("error", "Try Harder!" );
				return "redirect:/";
			}
			
		}
		
		
		@RequestMapping("/code")
		public String code() {
			return "Code.jsp";
		}
}
