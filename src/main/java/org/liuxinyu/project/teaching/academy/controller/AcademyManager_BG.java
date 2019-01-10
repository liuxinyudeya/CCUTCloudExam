package org.liuxinyu.project.teaching.academy.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.liuxinyu.project.teaching.academy.domain.Academy;
import org.liuxinyu.project.teaching.academy.service.AddAcademy_Service_Iface;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author liuxinyu
 * @date 2019/1/2 0002 - 13:54
 */
@Controller
@RequestMapping("/AcademyManager_BG")
public class AcademyManager_BG {

    @Resource
    AddAcademy_Service_Iface addAcademy_Service_Iface;

    @ResponseBody
    @RequestMapping("/selectAcademy")
    public void selectAcademy(String data) {
        System.out.println(data);

    }

    @ResponseBody
    @RequestMapping("/addAcademy")
    public JSONObject addAcademy(String data) {
        Map<String, String> map = new HashMap<String, String>();
        String message = "添加失败";
/*
        try {
            message = addAcademy_Service_Iface.addAcademy(data);
        } catch (Exception e) {
            e.printStackTrace();

        }*/
        map.put("message", data);

        message = "添加成功";
        System.out.printf("返回的消息：", map.get("message"));

        return  JSONArray.parseObject(JSON.toJSONString(map));


    }
}
