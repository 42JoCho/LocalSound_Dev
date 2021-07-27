package com.bbgg_dev.post;

import com.bbgg_dev.post.Impl.PostDAO;

public class PostServiceClient {

    public static void main(String[] args) {

        PostDAO postDAO = new PostDAO();
        PostVO vo = new PostVO();

        vo.setPostAuthor("작성자 1");
        System.out.println(postDAO.getPostByAuthor(vo));
        System.out.println(postDAO.getPostByViewCount());
        System.out.println(postDAO.getPostByRecoCount());
    }
}
