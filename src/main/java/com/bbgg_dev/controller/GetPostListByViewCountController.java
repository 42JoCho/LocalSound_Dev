package com.bbgg_dev.controller;

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
public class GetPostListByViewCountController {

    @RequestMapping(value = "/getPostListByViewCount.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.getPostByViewCount();

        HttpSession session = request.getSession();
        session.setAttribute("postList", postList);

        ModelAndView mav = new ModelAndView();
        mav.addObject("postList", postList);
        mav.setViewName("/main.jsp");
        return mav;
    }
}
