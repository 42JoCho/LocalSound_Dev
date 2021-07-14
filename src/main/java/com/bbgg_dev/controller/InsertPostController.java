package com.bbgg_dev.controller;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.sql.Date;

public class InsertPostController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            System.out.println("글 등록 처리");
            request.setCharacterEncoding("EUC-KR");

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
        return "getPostList.do";
    }
}
