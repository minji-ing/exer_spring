package com.myproject.community.dataroom.dao;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
		sqlSession.insert("mapper.dataroom.insert", dataroomVO);	
	}
	
	// 게시글 목록 조회
	@Override
	public List<DataroomVO> list() throws Exception {
		return sqlSession.selectList("mapper.dataroom.list");
	}
	
	// 게시글 조회
	@Override
	public DataroomVO read(int bno) throws Exception {
		return sqlSession.selectOne("mapper.dataroom.read", bno);
	}
}
