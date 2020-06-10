package com.myproject.community.dataroom.dao;

import org.springframework.beans.factory.annotation.Autowired;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myproject.community.dataroom.vo.DataroomVO;

@Repository
public class DataroomDAOImpl implements DataroomDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 게시글 작성
	@Override
	public void write(DataroomVO dataroomVO) throws Exception {
		sqlSession.insert("dataroom", dataroomVO);
	}
}
