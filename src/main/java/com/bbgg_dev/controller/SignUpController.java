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
    @RequestMapping(value = "/signup.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("회원가입 처리");

        // 1. 로그인 폼 입력값 추출
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String name = request.getParameter("name");
        String birth = request.getParameter("year")
                + "-" + request.getParameter("month")
                + "-" + request.getParameter("day");
        char gender = request.getParameter("gender").charAt(0);
        String email = request.getParameter("email");

        System.out.println(birth);
        // 2. id 중복체크
        SignUpDAO signUpDAO = new SignUpDAO();
        SignUpVO vo = new SignUpVO();
        System.out.println(vo);
        vo.setId(id);
        SignUpVO user = signUpDAO.idCheck(vo);
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        String signUpSuccess = null;
        // 3. id 중복여부에 따라서 회원가입 결정
        if (user != null) {
            session.setAttribute("sessionId", null);
            System.out.println("이미 가입된 사용자");
            mav.setViewName("/login.jsp");
        } else {
            vo.setId(id);
            vo.setPw(pw);
            vo.setName(name);
            vo.setGender(gender);
            vo.setBirth(java.sql.Date.valueOf(birth));
            vo.setEmail(email);
            signUpDAO.insertMember(vo);
            signUpSuccess = vo.getName();
            session.setAttribute("sessionId", signUpSuccess);
            System.out.println("회원가입 성공!");
            mav.setViewName("/login.jsp");
        }
        return mav;
    }
}
