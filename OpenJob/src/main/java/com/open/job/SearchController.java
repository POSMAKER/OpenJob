package com.open.job;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("search")
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/searchopt")
	public String home(@RequestParam("searchOpt")String searchOpt) {
		logger.info(searchOpt);
		
		return "/searchview/searchhome";
	}

}
