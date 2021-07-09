package com.bbgg_dev.sign_up.Impl;

import org.springframework.stereotype.Repository;
import com.bbgg_dev.sign_up.SignUpVO;
import com.bbgg_dev.common.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@Repository("SignUpDAO")
public class SignUpDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String MEMBER_INSERT = "insert into mysql.member(id, pw, name, gender, birth, email) values(?,?,?,?,?,?)";
    private final String MEMBER_DELETE = "delete from mysql.member where id=?";
    private final String FIND_ID = "select id from mysql.member where email=?";
    private final String FIND_PASSWORD = "select pw from mysql.member where id=?";
    private final String ID_CHECK = "select count(*) as count from mysql.member where id=? "; // id 중복체크 쿼리
    String id, pw;

    public void insertMember(SignUpVO vo) {// 사용자 회원가입
        System.out.println("====> JDBC로 insertMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(MEMBER_INSERT);
            stmt.setString(1, vo.getId());
            stmt.setString(2, vo.getPw());
            stmt.setString(3, vo.getName());
            stmt.setString(4, String.valueOf(vo.getGender()));
            stmt.setString(5, vo.getBirth().toString());
            stmt.setString(6, vo.getEmail());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    public void deleteMember(String id) { // 가입된 사용자 탈퇴
        System.out.println("====> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(MEMBER_DELETE);
            stmt.setString(1, id);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
    }

    public String findId(String email) {
        System.out.println("====> JDBC로 findId() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(FIND_ID);
            stmt.setString(1, email);
            rs = stmt.executeQuery();
            if(rs.next())
            id = rs.getString(1);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
        return id;
    }

    public String findPassword(String id) {
        System.out.println("====> JDBC로 findPassword() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(FIND_PASSWORD);
            stmt.setString(1, id);
            rs = stmt.executeQuery();
            if(rs.next())
            pw = rs.getString(1);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
        return pw;
    }

    public boolean idCheck(String id) {
        System.out.println("====> JDBC로 idCheck() 기능 처리");
        boolean isduplicated = false;
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(ID_CHECK);
            stmt.setString(1, id);
            rs = stmt.executeQuery();
            if(rs.next()) {
                if (rs.getInt("count") != 0) {
                    isduplicated = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(stmt, conn);
        }
        return isduplicated;
    }
}
