package com.myproject.community.dataroom.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.myproject.community.dataroom.vo.DataroomVO;

public interface DataroomController {
	public String writeView() throws Exception;
	public String write(DataroomVO dataroomVO) throws Exception;
	public String list(Model model) throws Exception;
	public String read(DataroomVO dataroomVO, Model model) throws Exception;
	public String updateView(DataroomVO dataroomVO, Model model) throws Exception;
	public String update(DataroomVO dataroomVO) throws Exception;
	public String delete(DataroomVO dataroomVO) throws Exception;
}
