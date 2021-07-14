package com.bbgg_dev.controller;

import java.util.HashMap;
import java.util.Map;

public class HandlerMapping {
    private Map<String, Controller> mappings;

    public HandlerMapping(){
        mappings = new HashMap<String, Controller>();
        mappings.put("/login.do", new LoginController());
        mappings.put("/getPostList.do", new GetPostListController());
        mappings.put("/getPost.do", new GetPostController());
    }



    public Controller getController(String path){
        return mappings.get(path);
    }
}
