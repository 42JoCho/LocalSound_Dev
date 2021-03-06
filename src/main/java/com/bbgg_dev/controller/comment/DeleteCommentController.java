package com.bbgg_dev.controller.comment;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.comment.Impl.CommentDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class DeleteCommentController {

    @RequestMapping("/deleteComment.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
        System.out.println("댓글 삭제 처리");
        ModelAndView mav = new ModelAndView();
        CommentVO vo = new CommentVO();
        CommentDAO commentDAO = new CommentDAO();

        System.out.println(request.getParameter("cid"));
        vo.setCommentId(Integer.parseInt(request.getParameter("cid")));
        commentDAO.deleteComment(vo);

        mav.setViewName("redirect:getCommentList.do");

        return mav;
    }
}
// 1. 동 별로 게시글 필터링
// 2.
