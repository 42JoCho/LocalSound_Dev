package com.bbgg_dev.sign_up.Impl;

import com.bbgg_dev.common.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.bbgg_dev.sign_up.SignUpVO;
import com.bbgg_dev.common.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@Repository("SignUpDAO")
public class SignUpDAO {
    private SqlSession mybatis;

    public SignUpDAO() {
        mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
    }

    public void insertMember(SignUpVO vo) {// 사용자 회원가입
        System.out.println("====> JDBC로 insertMember() 기능 처리");
        mybatis.insert("SignUpDAO.insertMember", vo);
        mybatis.commit();
    }

    public void deleteMember(SignUpVO vo) { // 가입된 사용자 탈퇴
        System.out.println("====> JDBC로 deleteMember() 기능 처리");
        mybatis.delete("SignUpDAO.deleteMember");
        mybatis.commit();
    }

    public SignUpVO findId(SignUpVO vo) {
        System.out.println("====> JDBC로 findId() 기능 처리");
        return mybatis.selectOne("SignUpDAO.findId", vo);
    }

    public SignUpVO findPassword(SignUpVO vo) {
        System.out.println("====> JDBC로 findPassword() 기능 처리");
        return mybatis.selectOne("SignUpDAO.findPassword", vo);
    }

    public SignUpVO idCheck(SignUpVO vo) {
        System.out.println("====> JDBC로 idCheck() 기능 처리");
        return mybatis.selectOne("SignUpDAO.idCheck", vo);
    }
}
