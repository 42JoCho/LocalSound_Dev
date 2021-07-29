package com.bbgg_dev.controller.comment;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.comment.Impl.CommentDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class InsertCommentController {

    @RequestMapping("/insertComment.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
        System.out.println("댓글 등록 처리");
        ModelAndView mav = new ModelAndView();
        CommentVO vo = new CommentVO();
        CommentDAO commentDAO = new CommentDAO();

        int postId = Integer.parseInt(request.getParameter("pid"));
        String commentAuthor = request.getParameter("cid");
        String commentText = request.getParameter("cmtText");

        vo.setPostId(postId);
        vo.setCommentAuthor(commentAuthor);
        vo.setCommentText(commentText);

        commentDAO.insertComment(vo);

        mav.setViewName("/getPost.do");
        return mav;
    }
}
