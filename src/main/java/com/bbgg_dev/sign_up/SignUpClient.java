package com.bbgg_dev.sign_up;

import com.bbgg_dev.sign_up.Impl.SignUpDAO;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.nio.channels.SelectionKey;

public class SignUpClient {
    public static void main(String[] args) {

        SignUpDAO signUpDAO = new SignUpDAO();
        SignUpVO vo = new SignUpVO();

/*        vo.setId("smki001");
        vo.setPw("alsrl008");
        vo.setName("choiKim");
        vo.setGender('M');
        vo.setBirth(java.sql.Date.valueOf("1997-09-11"));
        vo.setEmail("seomingi52@gmail.com");
        signUpDAO.insertMember(vo);*/

        vo.setEmail("seomingi52@gmail.com");
        signUpDAO.findId(vo);

        vo.setId("smki001");
        signUpDAO.findPassword(vo);
        System.out.println(signUpDAO.findPassword(vo).toString());

        vo.setId("smki001");
        if(signUpDAO.idCheck(vo)!=null){
            System.out.println("id 중복");
        }else{
            System.out.println("중복된 id");
        }
    }
}
