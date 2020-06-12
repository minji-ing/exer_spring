package com.myproject.community.dataroom.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.community.dataroom.service.DataroomService;
import com.myproject.community.dataroom.vo.DataroomVO;

@Controller("dataroomController")
public class DataroomControllerImpl implements DataroomController {
	static final Logger logger = LoggerFactory.getLogger(DataroomControllerImpl.class);
	
	@Autowired
	DataroomService dataroomService;
	
	// 게시판 글 작성 화면
	@RequestMapping(value="/dataroom/writeView", method=RequestMethod.GET)
	public String writeView() throws Exception{
		logger.info("writeView");
		return "/dataroom/writeView";
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/dataroom/write", method=RequestMethod.POST)
	public String write(DataroomVO dataroomVO) throws Exception{
		logger.info("write");
		
		dataroomService.write(dataroomVO);
		
		return "/dataroom/list";
	}
	
	// 게시글 목록 조회
	@RequestMapping(value="/dataroom/list", method=RequestMethod.GET)
	public String list(Model model) throws Exception {
		logger.info("list");
		
		model.addAttribute("list", dataroomService.list());
		
		return "/dataroom/list";
	}
	
	// 게시글 조회
	@RequestMapping(value="/dataroom/readView", method=RequestMethod.GET)
	public String read(DataroomVO dataroomVO, Model model) throws Exception {
		logger.info("read");
		
		model.addAttribute("read", dataroomService.read(dataroomVO.getBno()));
		
		return "/dataroom/readView";
	}
}
