package com.bbgg_dev.controller.comment;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.comment.Impl.CommentDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UpdateCommentController {

    @RequestMapping("/updateComment.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
        System.out.println("댓글 수정 처리");
        ModelAndView mav = new ModelAndView();
        CommentVO vo = new CommentVO();
        CommentDAO commentDAO = new CommentDAO();

        int cid = Integer.parseInt(request.getParameter("cid"));
        String cmtText = request.getParameter("cmtText");

        vo.setCommentId(cid);
        vo.setCommentText(cmtText);

        commentDAO.updateComment(vo);

        mav.setViewName("redirect:getCommentList.do");

        return mav;
    }
}
