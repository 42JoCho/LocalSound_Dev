package com.bbgg_dev.controller.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class GetPostByLocationController {
    @RequestMapping(value = "/getPostByGuName.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){

        String guName = request.getParameter("guName");
        String dongName = request.getParameter("dongName");
        PostVO vo = new PostVO();
        vo.setGuName(guName);
        vo.setDongName(dongName);
        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.getPostByLocation(vo);

        HttpSession session = request.getSession();
        session.setAttribute("postList", postList);

        ModelAndView mav = new ModelAndView();
        mav.addObject("postList", postList);
        mav.setViewName("/main.jsp");
        return mav;
    }
}
