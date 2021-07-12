package com.bbgg_dev.login.Impl;

import com.bbgg_dev.login.LoginService;
import com.bbgg_dev.login.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbgg_dev.login.LoginService;
import com.bbgg_dev.login.LoginVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDAO loginDAO;

    public void setLoginDAO(LoginDAO loginDAO) {
        this.loginDAO = loginDAO;
    }

    @Override
    public LoginVO checkLogin(LoginVO vo) {
        return loginDAO.checkUser(vo);
    }
}
