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
public class GetPostListController  {

    @RequestMapping(value = "/getPostList.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("글 목록 검색 처리");
        // 1. 사용자 입력 정보 추출 (검색기능 구현할것)


        // 2. DB 연동 처리
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.getPostList(vo);

        // 3. 검색 결과를 세션에 저장하고 목록 화면 리턴
        HttpSession session = request.getSession();
        session.setAttribute("postList", postList);

        ModelAndView mav = new ModelAndView();
        mav.addObject("postList", postList);
        mav.setViewName("/main.jsp");
        return mav;
    }
}
