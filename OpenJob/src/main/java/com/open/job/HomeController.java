package com.open.job;

import java.util.Locale;


//import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class HomeController {
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "redirect:/searchhome";
	}

	@RequestMapping(value = "/{frmName:^.+home$}", method = RequestMethod.GET)
	public String gohome(@PathVariable String frmName) {
		String folderName = frmName.substring(0, frmName.length()-4)+"view/";
		return folderName+frmName;
	}
}
