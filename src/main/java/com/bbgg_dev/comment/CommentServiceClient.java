package com.bbgg_dev.comment;

import com.bbgg_dev.comment.Impl.CommentDAO;

public class CommentServiceClient {

    public static void main(String[] args) {
        CommentVO vo = new CommentVO();
        CommentDAO commentDAO = new CommentDAO();

        vo.setPostId(1);
        vo.setCommentAuthor("작성자 2");
        vo.setCommentText("댓글 작성 테스트");
        System.out.println(vo);
        commentDAO.insertComment(vo);
    }
}
