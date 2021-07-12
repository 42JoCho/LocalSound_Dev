package com.bbgg_dev.login;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class LoginServiceClient {
    public static void main(String[] args) {
        // Spring Container 구동
        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

        // 컨테이너로부터 LoginServiceImpl 객체 lookUp
        LoginService loginService = (LoginService) container.getBean("loginService");

        LoginVO vo = new LoginVO();
        vo.setMemberId("root");
        vo.setMemberPassword("1234");

        LoginVO user = loginService.checkLogin(vo);
        if(user!=null)
            System.out.println(user.getMemberName()+" 님 로그인 성공!");
        else
            System.out.println("로그인 실패!");

        container.close();
    }
}
