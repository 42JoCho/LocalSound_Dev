package com.bbgg_dev.controller;

import java.util.HashMap;
import java.util.Map;

public class HandlerMapping {
    private Map<String, Controller> mappings;

    public HandlerMapping() {
        mappings = new HashMap<String, Controller>();
        mappings.put("/login.do", new LoginController());
        mappings.put("/logout.do", new LogoutController());
        mappings.put("/getPost.do", new GetPostController());
        mappings.put("/getPostList.do", new GetPostListController());
        mappings.put("/insertPost.do", new InsertPostController());
        mappings.put("/updatePost.do", new UpdatePostController());
        mappings.put("/deletePost.do", new DeletePostController());
    }

    public Controller getController(String path) {
        return mappings.get(path);
    }
}
