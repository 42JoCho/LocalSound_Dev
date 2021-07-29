package com.bbgg_dev.controller.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

@Controller
public class InsertPostController  {

    @RequestMapping(value = "/insertPost.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            System.out.println("글 등록 처리");
            request.setCharacterEncoding("utf-8");

            // 1. 사용자 입력 정보 추출
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String maintext = request.getParameter("mainText");
            String guName = request.getParameter("guName");
            String dongName = request.getParameter("dongName");

            // 2. DB 연동 처리
            PostVO vo = new PostVO();
            vo.setPostTitle(title);
            vo.setPostAuthor(author);
            vo.setPostText(maintext);
            vo.setGuName(guName);
            vo.setDongName(dongName);

            PostDAO postDAO = new PostDAO();
            postDAO.insertPost(vo);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        // 3. 화면 글 목록으로 전환
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:getPostList.do");
        return mav;
    }
}
