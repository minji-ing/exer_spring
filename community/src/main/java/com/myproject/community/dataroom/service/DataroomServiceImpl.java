package com.myproject.community.dataroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.community.dataroom.dao.DataroomDAO;
import com.myproject.community.dataroom.vo.DataroomVO;

@Service
public class DataroomServiceImpl implements DataroomService {
	@Autowired
	private DataroomDAO dataroomDAO;
	
	// 게시글 작성
	public void write(DataroomVO dataroomVO) throws Exception{
		dataroomDAO.write(dataroomVO);
	}
	
	// 게시글 목록 조회
	public List<DataroomVO> list() throws Exception {
		return dataroomDAO.list();
	}
	
	// 게시글 조회
	public DataroomVO read(int bno) throws Exception {
		return dataroomDAO.read(bno);
	}
	
	// 게시글 수정
	public void update(DataroomVO dataroomVO) throws Exception {
		dataroomDAO.update(dataroomVO);
	}
	
	// 게시글 삭제
	public void delete(int bno) throws Exception {
		dataroomDAO.delete(bno);
	}
}
