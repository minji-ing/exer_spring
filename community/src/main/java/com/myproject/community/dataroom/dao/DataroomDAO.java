package com.myproject.community.dataroom.dao;

import com.myproject.community.dataroom.vo.DataroomVO;

public interface DataroomDAO {
	
	// 게시글 작성
	public void write(DataroomVO dataroomVO) throws Exception;
}
