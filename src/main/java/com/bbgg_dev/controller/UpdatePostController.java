package com.bbgg_dev.controller;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdatePostController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 수정 처리");

        try {
            // 1. 사용자 입력 정보 추출
            String title = request.getParameter("title");
            String maintext = request.getParameter("mainText");
            String guName = request.getParameter("guName");
            String dongName = request.getParameter("dongName");

            // 2. DB 연동 처리
            PostVO vo = new PostVO();
            vo.setPostTitle(title);
            vo.setPostText(maintext);
            vo.setGuName(guName);
            vo.setDongName(dongName);

            PostDAO postDAO = new PostDAO();
            postDAO.updatePost(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "updatePost.do";
    }
}
