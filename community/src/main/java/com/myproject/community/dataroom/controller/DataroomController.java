package com.myproject.community.dataroom.controller;

import com.myproject.community.dataroom.vo.DataroomVO;

public interface DataroomController {
	public void writeView() throws Exception;
	public String write(DataroomVO dataroomVO) throws Exception;
}