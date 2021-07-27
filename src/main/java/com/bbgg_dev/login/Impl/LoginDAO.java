package com.bbgg_dev.login.Impl;

import com.bbgg_dev.common.SqlSessionFactoryBean;
import com.bbgg_dev.login.LoginVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("loginDAO")
public class LoginDAO {

    private SqlSession mybatis;

    public LoginDAO() {
        mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
    }

    public LoginVO checkUser(LoginVO vo) {
        return mybatis.selectOne("LoginDAO.checkUser", vo);
    }
}