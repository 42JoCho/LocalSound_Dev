package com.bbgg_dev.sign_up;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class SignUpClient {
    public static void main(String[] args) {

        // 스프링 컨테이너 구동
        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

        // 스프링 컨테이너로부터 SignUpServiceImpl 객체를 lookup.
        SignUpService signUpService = (SignUpService) container.getBean("SignUpService");
        SignUpVO vo = new SignUpVO();

/*        // 회원가입 테스트
        vo.setId("root2");
        vo.setPw("12346");
        vo.setName("mingiSeo2");
        vo.setGender('M');
        vo.setBirth(java.sql.Date.valueOf("1999-09-11"));
        vo.setEmail("seomingi52@naver.com");
        signUpService.insertMember(vo);*/

        // id찾기 테스트
        String wtfind = "smki001@naver.com";
        System.out.println(signUpService.findId(wtfind));

        // pw찾기 테스트
        String id = "root1";
        System.out.println(signUpService.findPassword(id));

        // id중복체크 테스트
        String isdup = "root";
        System.out.println(signUpService.idCheck(isdup));

/*        // 회원탈퇴 테스트
        String del = "root";
        signUpService.deleteMember(del);*/
    }
}
