package com.bbgg_dev.post.Impl;

import com.bbgg_dev.common.JDBCUtil;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// 검색 기능 백엔드 작업할것.

@Repository("postDAO")
public class PostDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String POST_INSERT = "insert into mysql.post(title, author, pmain_text, gu_name, dong_name) values(?,?,?,?,?)";
    private final String POST_UPDATE = "update mysql.post set title=?, pmain_text=?, gu_name=?, dong_name=?";
    private final String POST_DELETE = "delete from mysql.post where pid=?";
    private final String POST_GET = "select * from mysql.post where pid=?";
    private final String POST_LIST = "select * from mysql.post order by pid desc";

    public void insertPost(PostVO vo) {
        System.out.println("====> JDBC로 insertPost() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(POST_INSERT);
            stmt.setString(1, vo.getPostTitle());
            stmt.setString(2, vo.getPostAuthor());
            stmt.setString(3, vo.getPostText());
            stmt.setString(4, vo.getGuName());
            stmt.setString(5, vo.getDongName());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    public void updatePost(PostVO vo) {
        System.out.println("====> JDBC로 updatePost() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(POST_UPDATE);
            stmt.setString(1, vo.getPostTitle());
            stmt.setString(2, vo.getPostText());
            stmt.setString(3, vo.getGuName());
            stmt.setString(4, vo.getDongName());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    public void deletePost(PostVO vo) {
        System.out.println("====> JDBC로 deletePost() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(POST_DELETE);
            stmt.setInt(1, vo.getPostId());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    public PostVO getPost(PostVO vo) {
        System.out.println("====> JDBC로 getPost() 기능 처리");
        PostVO post = null;
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(POST_GET);
            stmt.setInt(1, vo.getPostId());
            rs = stmt.executeQuery();
            if (rs.next()) {
                post = new PostVO();
                getPostVO(post);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return post;
    }

    public List<PostVO> getPostList(PostVO vo) {
        System.out.println("====> JDBC로 getPostList() 기능 처리");
        List<PostVO> postList = new ArrayList<>();
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(POST_LIST);
            rs = stmt.executeQuery();
            while (rs.next()) {
                PostVO post = new PostVO();
                getPostVO(post);
                postList.add(post);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(rs, stmt, conn);
        }
        return postList;
    }

    private void getPostVO(PostVO post) throws SQLException {
        post.setPostId(rs.getInt("PID"));
        post.setPostTitle(rs.getString("TITLE"));
        post.setPostAuthor(rs.getString("AUTHOR"));
        post.setPostDate(rs.getDate("PDATE"));
        post.setPostViewCount(rs.getInt("VIEWCOUNT"));
        post.setPostText(rs.getString("PMAIN_TEXT"));
        post.setGuName(rs.getString("GU_NAME"));
        post.setDongName(rs.getString("DONG_NAME"));
    }
}
