package com.bbgg_dev.comment.Impl;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.common.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository("CommentDAO")
public class CommentDAO {

    private SqlSession mybatis;

    public CommentDAO() {
        mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
    }

    // 댓글 등록
    public void insertComment(CommentVO vo) {
        mybatis.insert("CommentDAO.insertComment", vo);
        mybatis.commit();
    }

    // 댓글 삭제
    public void deleteComment(CommentVO vo) {
        mybatis.delete("CommentDAO.deleteComment", vo);
        mybatis.commit();
    }

    // 댓글 수정
    public void updateComment(CommentVO vo) {
        mybatis.update("CommentDAO.updateComment", vo);
        mybatis.commit();
    }

    // 특정 글 댓글리스트 가져오기
    public List<CommentVO> getCommentList(CommentVO vo) {
        return mybatis.selectList("CommentDAO.getCommentList", vo);
    }

}
