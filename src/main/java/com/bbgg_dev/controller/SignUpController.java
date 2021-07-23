package com.bbgg_dev.controller;

import com.bbgg_dev.sign_up.Impl.SignUpDAO;
import com.bbgg_dev.sign_up.SignUpVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class SignUpController {
    @RequestMapping(value ="/signup.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
        System.out.println("회원가입 처리");

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String name = request.getParameter("name");
        char gender = request.getParameter("gender").charAt(0);
        String birth = request.getParameter("birth");
        String email = request.getParameter("email");


        SignUpVO vo = new SignUpVO();
        vo.setId(id);
        vo.setPw(pw);
        vo.setName(name);
        vo.setGender(gender);
        vo.setBirth(java.sql.Date.valueOf(birth));
        vo.setEmail(email);

        SignUpDAO signUpDAO = new SignUpDAO();
        SignUpVO user = signUpDAO.idCheck(vo);
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        if(user != null){

        }else{

        }
        signUpDAO.insertMember(vo);
    }
}
