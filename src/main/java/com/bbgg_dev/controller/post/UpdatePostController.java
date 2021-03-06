package com.bbgg_dev.controller.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UpdatePostController  {

    @RequestMapping(value = "/updatePost.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 수정 처리");

    // 글 수정 페이지에서 수정완료 버튼 클릭시 작동

        try {
            // 1. 사용자 입력 정보 추출
            int pid = Integer.parseInt(request.getParameter("pid"));
            String title = request.getParameter("title");
            String maintext = request.getParameter("mainText");
            String guName = request.getParameter("guName");
            String dongName = request.getParameter("dongName");


            // 2. DB 연동 처리
            PostVO vo = new PostVO();
            vo.setPostId(pid);
            vo.setPostTitle(title);
            vo.setPostText(maintext);
            vo.setGuName(guName);
            vo.setDongName(dongName);

            PostDAO postDAO = new PostDAO();
            postDAO.updatePost(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:getPostList.do");
        return mav;
    }
}
