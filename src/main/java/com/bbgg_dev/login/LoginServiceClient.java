package com.bbgg_dev.login;

import com.bbgg_dev.login.Impl.LoginDAO;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class LoginServiceClient {
    public static void main(String[] args) {

        LoginDAO loginDAO = new LoginDAO();
        LoginVO vo = new LoginVO();

        vo.setMemberId("test");
        vo.setMemberPassword("12345");

        LoginVO user = loginDAO.checkUser(vo);
        System.out.println(vo);
        if (user != null)
            System.out.println(user.getMemberName() + " 님 로그인 성공!");
        else
            System.out.println("로그인 실패!");

    }
}
