package com.myproject.community.dataroom.service;

import java.util.List;

import com.myproject.community.dataroom.vo.DataroomVO;

public interface DataroomService {
	
	// 게시글 작성
	public void write(DataroomVO dataroomVO) throws Exception;
	
	// 게시글 목록 조회
	public List<DataroomVO> list() throws Exception;
	
	// 게시글 조회
	public DataroomVO read(int bno) throws Exception;
	
	// 게시글 수정
	public void update(DataroomVO dataroomVO) throws Exception;
	
	// 게시글 삭제
	public void delete(int bno) throws Exception;
}
