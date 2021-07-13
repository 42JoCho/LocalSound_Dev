package com.bbgg_dev.post.Impl;

import com.bbgg_dev.post.PostService;
import com.bbgg_dev.post.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("postService")
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDAO postDAO;

    @Override
    public void insertPost(PostVO vo) {
        postDAO.insertPost(vo);
    }

    @Override
    public void updatePost(PostVO vo) {
        postDAO.updatePost(vo);
    }

    @Override
    public void deletePost(PostVO vo) {
        postDAO.deletePost(vo);
    }

    @Override
    public PostVO getPost(PostVO vo) {
        return postDAO.getPost(vo);
    }

    @Override
    public List<PostVO> getPostList(PostVO vo) {
        return postDAO.getPostList(vo);
    }
}
