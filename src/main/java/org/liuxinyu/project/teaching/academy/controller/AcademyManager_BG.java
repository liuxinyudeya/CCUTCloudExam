package org.liuxinyu.project.teaching.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author liuxinyu
 * @date 2019/1/2 0002 - 13:54
 */
@Controller
@RequestMapping("/AcademyManager_BG")
public class AcademyManager_BG {

    @ResponseBody
    @RequestMapping("/selectAcademy")
    public void selectAcademy() {
        System.out.println("emmm...");
    }
}
