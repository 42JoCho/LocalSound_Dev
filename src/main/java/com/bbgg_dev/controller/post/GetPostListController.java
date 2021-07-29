package com.bbgg_dev.controller.post;

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
public class GetPostListController {

    @RequestMapping(value = "/getPostList.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 목록 검색 처리");

        // 2. DB 연동 처리

        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.getPostList();

        // 3. 검색 결과를 세션에 저장하고 목록 화면 리턴
        HttpSession session = request.getSession();
        session.setAttribute("postList", postList);

        // 3. 검색 결과와 화면 정보를 ModelAndView 저장, 목록 화면 리턴
        ModelAndView mav = new ModelAndView();
        mav.addObject("postList", postList);
        mav.setViewName("/main.jsp");
        return mav;
    }
}
