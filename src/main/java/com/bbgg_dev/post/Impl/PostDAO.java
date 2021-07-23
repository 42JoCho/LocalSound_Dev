package com.bbgg_dev.post.Impl;

import com.bbgg_dev.common.SqlSessionFactoryBean;
import com.bbgg_dev.post.PostVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository("postDAO")
public class PostDAO {
    private SqlSession mybatis;

    public PostDAO() {
        mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
    }

    public void insertPost(PostVO vo) {
        mybatis.insert("PostDAO.insertPost", vo);
        mybatis.commit();
    }

    public void updatePost(PostVO vo) {
        mybatis.update("PostDAO.updatePost", vo);
        mybatis.commit();
    }

    public void updateViewCount(PostVO vo) {
        mybatis.update("PostDAO.updateViewCount", vo);
        mybatis.commit();
    }

    public void updateRecoCount(PostVO vo){
        mybatis.update("PostDAO.updateRecoCount", vo);
        mybatis.commit();
    }

    public void deletePost(PostVO vo) {
        mybatis.delete("PostDAO.deletePost", vo);
        mybatis.commit();
    }

    public PostVO getPost(PostVO vo) {
        return mybatis.selectOne("PostDAO.getPost", vo);
    }

    public List<PostVO> getPostByAuthor(PostVO vo) {
        return mybatis.selectList("PostDAO.getPostByAuthor", vo);
    }

    public List<PostVO> getPostList(PostVO vo) {
        return mybatis.selectList("PostDAO.getPostList", vo);
    }
}
