package com.bbgg_dev.comment.Impl;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.common.JDBCUtil;
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

    private final String insertComment = "insert into mysql.comment(author, cmain_text) values(?,?)";
    private final String deleteComment = "delete from mysql.comment where cid=?";
    private final String updateComment = "update mysql.comment set cmain_text=? where cid=?";
    private final String getComment = "select * from mysql.comment where cid=?";
    private final String getCommentList = "select * from mysql.comment where pid=? order by cid desc";

    // 댓글 등록
    public void insertComment(CommentVO vo) {
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(insertComment);
            stmt.setString(1, vo.getCommentAuthor());
            stmt.setString(2, vo.getCommentText());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    // 댓글 삭제
    public void deleteComment(CommentVO vo) {
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(deleteComment);
            stmt.setInt(1, vo.getCommentId());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    // 댓글 수정
    public void updateComment(CommentVO vo) {
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(updateComment);
            stmt.setString(1, vo.getCommentText());
            stmt.setInt(2, vo.getCommentId());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    // 댓글 하나 가져오기
    public CommentVO getComment(CommentVO vo) {
        CommentVO comment = null;
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(getComment);
            rs = stmt.executeQuery();
            if (rs.next()) {
                comment = getCommentVO();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return comment;
    }

    // 특정 글 댓글리스트 가져오기
    public List<CommentVO> getCommentList(CommentVO vo) {
        CommentVO comment = null;
        List<CommentVO> commentList = new ArrayList<>();
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(getCommentList);
            rs = stmt.executeQuery();
            while (rs.next()) {
                comment = getCommentVO();
                commentList.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
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
