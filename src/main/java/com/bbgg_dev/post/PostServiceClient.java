package com.bbgg_dev.post;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.util.List;

public class PostServiceClient {

    public static void main(String[] args) {

        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

        PostService postService = (PostService) container.getBean("postService");
        // 글 등록
        PostVO vo = new PostVO();

        // 글 목록 검색
        List<PostVO> postList = postService.getPostList(vo);
        for (PostVO post : postList)
            System.out.println("---> " + post.toString());

        container.close();
    }
}
