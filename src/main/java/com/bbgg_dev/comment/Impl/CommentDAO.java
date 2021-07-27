package com.bbgg_dev.comment.Impl;

import com.bbgg_dev.comment.CommentVO;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository("CommentDAO")
public class CommentDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String insertComment = "insert into ebdb.COMMENT(author, cmain_text) values(?,?)";
    private final String deleteComment = "delete from ebdb.COMMENT where cid=?";
    private final String updateComment = "update ebdb.COMMENT set cmain_text=? where cid=?";
    private final String getComment = "select * from ebdb.COMMENT where cid=?";
    private final String getCommentList = "select * from ebdb.COMMENT where pid=? order by cid desc";

    // 댓글 등록
    public void insertComment(CommentVO vo) {

    }

    // 댓글 삭제
    public void deleteComment(CommentVO vo) {

    }

    // 댓글 수정
    public void updateComment(CommentVO vo) {

    }

    // 댓글 하나 가져오기
    public CommentVO getComment(CommentVO vo) {
        CommentVO comment = null;

        return comment;
    }

    // 특정 글 댓글리스트 가져오기
    public List<CommentVO> getCommentList(CommentVO vo) {
        CommentVO comment = null;
        List<CommentVO> commentList = new ArrayList<>();

        return commentList;
    }

    private CommentVO getCommentVO() throws SQLException {
        CommentVO comment;
        comment = new CommentVO();
        comment.setPostId(rs.getInt("PID"));
        comment.setCommentId(rs.getInt("CID"));
        comment.setCommentDate(rs.getDate("CDATE"));
        comment.setCommentAuthor(rs.getString("AUTHOR"));
        comment.setCommentText(rs.getString("CMAIN_TEXT"));
        return comment;
    }
}
