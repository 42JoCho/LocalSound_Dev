package com.bbgg_dev.login.Impl;

import com.bbgg_dev.common.JDBCUtil;
import com.bbgg_dev.login.LoginVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String USER_LOGIN = "select * from mysql.member where id=? and pw=?";
    public LoginVO checkUser(LoginVO vo){
        LoginVO user = null;
        try {
            System.out.println("====> JDBC로 checkUser() 기능 처리");
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(USER_LOGIN);
            stmt.setString(1,vo.getMemberId());
            stmt.setString(2,vo.getMemberPassword());
            rs = stmt.executeQuery();
            if(rs.next()){
                user = new LoginVO();
                user.setMemberId(rs.getString("ID"));
                user.setMemberPassword(rs.getString("PW"));
                user.setMemberName(rs.getString("NAME"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs,stmt,conn);
        }
        return user;
    }
}
