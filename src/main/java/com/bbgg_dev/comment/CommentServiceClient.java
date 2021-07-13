package com.bbgg_dev.comment;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.util.List;

public class CommentServiceClient {

    public static void main(String[] args) {

        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
        CommentService commentService = (CommentService) container.getBean("CommentService");

        // 댓글 등록
        CommentVO vo = new CommentVO();
        vo.setPostId(4);
        vo.setCommentAuthor("user1");
        vo.setCommentText("댓글 2");
        vo.setCommentText("댓글 2의 내용입니다.");


        // 특정 글에 대한 댓글 목록
        List<CommentVO> commentList = commentService.getCommentList(vo);
        for (CommentVO comment : commentList)
            System.out.println("---> " + comment.toString());

        container.close();
    }

}
