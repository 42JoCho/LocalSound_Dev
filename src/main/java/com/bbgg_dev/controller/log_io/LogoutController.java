package com.bbgg_dev.controller.log_io;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LogoutController {

    @RequestMapping(value = "/logout.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("로그아웃 처리");

        // 1. 브라우저와 연결된 세션 객체 종료
        HttpSession session = request.getSession();
        session.invalidate();

        // 2. 세션 종료 후 메인 화면으로 이동
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/login.jsp");
        return mav;
    }
}
