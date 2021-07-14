package com.bbgg_dev.controller;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeletePostController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 삭제 처리");

        String pid = request.getParameter("pid");


        PostVO vo = new PostVO();
        vo.setPostId(Integer.parseInt(pid));

        PostDAO postDAO = new PostDAO();
        postDAO.deletePost(vo);

        return "getPostList.do";
    }
}
