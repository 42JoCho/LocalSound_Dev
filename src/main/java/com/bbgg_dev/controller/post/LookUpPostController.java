package com.bbgg_dev.controller.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class LookUpPostController {
    @RequestMapping(value = "/lookUpPostList.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 목록 조회 처리");

        // 2. DB 연동 처리
        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.getPostList();

        // 3. 검색 결과와 화면 정보를 ModelAndView 저장, 목록 화면 리턴
        ModelAndView mav = new ModelAndView();
        mav.addObject("postList", postList);
        mav.setViewName("/main.jsp");
        return mav;
    }
}
