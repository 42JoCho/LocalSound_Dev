package com.bbgg_dev.controller;

import com.bbgg_dev.login.Impl.LoginDAO;
import com.bbgg_dev.login.LoginVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController  {

    @RequestMapping(value = "/login.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("로그인 처리");

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        LoginVO vo = new LoginVO();
        vo.setMemberId(id);
        vo.setMemberPassword(pw);

        LoginDAO loginDAO = new LoginDAO();
        LoginVO user = loginDAO.checkUser(vo);

        ModelAndView mav = new ModelAndView();
        if (user != null) {
            mav.setViewName("redirect:getPostList.do");
        }else{
            mav.setViewName("/login.jsp");
        }
        return mav;
    }
}
