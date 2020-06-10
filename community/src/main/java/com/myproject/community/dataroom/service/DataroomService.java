package com.myproject.community.dataroom.service;

import com.myproject.community.dataroom.vo.DataroomVO;

public interface DataroomService {
	
	// 게시글 작성
	public void write(DataroomVO dataroomVO) throws Exception;
}
