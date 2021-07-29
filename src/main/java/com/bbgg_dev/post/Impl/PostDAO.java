package com.bbgg_dev.post.Impl;

import com.bbgg_dev.common.SqlSessionFactoryBean;
import com.bbgg_dev.post.PostVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("PostDAO")
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

    public void updateRecoCount(PostVO vo) {
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

    public List<PostVO> getPostByRecoCount() {
        return mybatis.selectList("PostDAO.getPostByRecoCount");
    }

    public List<PostVO> getPostByViewCount() {
        return mybatis.selectList("PostDAO.getPostByViewCount");
    }

    public List<PostVO> getPostByGuName(PostVO vo) {
        return mybatis.selectList("PostDAO.getPostByGuName", vo);
    }

    public List<PostVO> getPostList() {
        return mybatis.selectList("PostDAO.getPostList");
    }

    public List<PostVO> searchPost(PostVO vo) {
        return mybatis.selectList("PostDAO.searchPostList", vo);
    }
}
