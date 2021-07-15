package com.bbgg_dev.controller;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class DeletePostController {

    @RequestMapping(value = "/deletePost.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 삭제 처리");

        String pid = request.getParameter("pid");


        PostVO vo = new PostVO();
        vo.setPostId(Integer.parseInt(pid));

        PostDAO postDAO = new PostDAO();
        postDAO.deletePost(vo);

        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:getPostList.do");
        return mav;
    }
}
