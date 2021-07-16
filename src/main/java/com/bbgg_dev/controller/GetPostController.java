package com.bbgg_dev.controller;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class GetPostController {

    @RequestMapping(value = "/getPost.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {

        // 1. 검색할 게시글 번호 추출
        System.out.println("글 상세 조회 처리");
        String pid = request.getParameter("pid");

        // 2. DB 연동 처리
        PostVO vo = new PostVO();
        vo.setPostId(Integer.parseInt(pid));

        PostDAO postDAO = new PostDAO();
        PostVO post = postDAO.getPost(vo);

        // 3. 검색 결과를 세션에 저장하고 상세 화면 리턴
        ModelAndView mav = new ModelAndView();
        mav.addObject("post", post);
        mav.setViewName("/detail.jsp");
        return mav;
    }
}
