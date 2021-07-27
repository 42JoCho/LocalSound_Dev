package com.bbgg_dev.post;

import java.util.List;

public interface PostService {
    void insertPost(PostVO vo);

    void updatePost(PostVO vo);

    void deletePost(PostVO vo);

    PostVO getPost(PostVO vo);

    List<PostVO> getPostList();
}
