package com.bbgg_dev.controller;

import com.bbgg_dev.login.LoginVO;
import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class GetPostListController implements Controller{

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("글 목록 검색 처리");
        // 1. 사용자 입력 정보 추출


        // 2. DB 연동 처리
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = new ArrayList<>();

        // 3. 검색 결과를 세션에 저장하고 목록 화면 리턴
        HttpSession session = request.getSession();
        session.setAttribute("postList", postList);
        return "getPostList";
    }
}
