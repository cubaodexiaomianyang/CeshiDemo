package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Cp_guanliController/")
public class Cp_guanliController {

	@RequestMapping("/tiaozhuan")
	public String tiaozhuan(){
		return "chanpin/chanpinguanli";
	}
}
