package com.bbgg_dev.controller.member_page;

import com.bbgg_dev.login.Impl.LoginDAO;
import com.bbgg_dev.login.LoginVO;
import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberPageController {

    @RequestMapping(value = "/memberPage.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {

        LoginVO loginVO = new LoginVO();
        LoginDAO loginDAO = new LoginDAO();
        PostVO postVO = new PostVO();
        PostDAO postDAO = new PostDAO();
        HttpSession session = request.getSession();
        String memberId = (String) session.getAttribute("sessionId");
        System.out.println(memberId);
        loginVO.setMemberId(memberId);
        LoginVO userInfo = loginDAO.getUserInfo(loginVO);
        System.out.println(userInfo);
        postVO.setPostAuthor(memberId);
        List<PostVO> postList = postDAO.getPostByAuthor(postVO);

        ModelAndView mav = new ModelAndView();
        mav.addObject("postList",postList);
        mav.addObject("userInfo", userInfo);
        mav.setViewName("/Information.jsp");
        return mav;
    }
}
