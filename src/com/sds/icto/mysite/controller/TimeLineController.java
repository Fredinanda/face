package com.sds.icto.mysite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/timeline")
public class TimeLineController {

	@RequestMapping("")
	public String read(){
		return "main/main";
	}
	
	
/*	@RequsetMapping("/insert")
	public String insert(){
		return "";
	}*/
}
