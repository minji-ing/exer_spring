package com.myproject.community.dataroom.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.community.dataroom.service.DataroomService;
import com.myproject.community.dataroom.vo.DataroomVO;

@Controller
@RequestMapping("/dataroom/*")
public class DataroomControllerImpl implements DataroomController {
	static final Logger logger = LoggerFactory.getLogger(DataroomControllerImpl.class);
	
	@Autowired
	DataroomService dataroomService;
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/dataroom/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}
	
	// 게시판 글 작성
	@RequestMapping(value = "/dataroom/write", method = RequestMethod.POST)
	public String write(DataroomVO dataroomVO) throws Exception{
		logger.info("write");
		
		dataroomService.write(dataroomVO);
		
		return "redirect:/";
	}
}
