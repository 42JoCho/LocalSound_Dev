package com.bbgg_dev.comment;

import java.util.List;

public interface CommentService {

    void insertComment(CommentVO vo);

    void deleteComment(CommentVO vo);

    void updateComment(CommentVO vo);

    CommentVO getComment(CommentVO vo);

    List<CommentVO> getCommentList(CommentVO vo);


}
