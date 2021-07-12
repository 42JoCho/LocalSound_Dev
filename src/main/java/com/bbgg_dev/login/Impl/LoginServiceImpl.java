package com.bbgg_dev.login.Impl;

import com.bbgg_dev.login.LoginService;
import com.bbgg_dev.login.LoginVO;

public class LoginServiceImpl implements LoginService {
    private LoginDAO loginDAO;

    public void setLoginDAO(LoginDAO loginDAO){
        this.loginDAO = loginDAO;
    }

    @Override
    public LoginVO checkLogin(LoginVO vo) {
        return loginDAO.checkUser(vo);
    }
}
