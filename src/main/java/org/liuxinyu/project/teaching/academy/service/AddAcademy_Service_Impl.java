package org.liuxinyu.project.teaching.academy.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.liuxinyu.project.teaching.academy.dao.AcademyManager_Dao_Iface;
import org.liuxinyu.project.teaching.academy.domain.Academy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Map;


/**
 * @author liuxinyu
 * @date 2019/1/9 0009 - 14:22
 */
@Service
@Transactional
public class AddAcademy_Service_Impl implements AddAcademy_Service_Iface {
    @Resource
    AcademyManager_Dao_Iface academyManager_Dao_Iface ;

    public String addAcademy(String data ) throws Exception {

        JSON json = JSON.parseObject(data);
        String grade = ((JSONObject) json).getString("grade");
        String academy_name = ((JSONObject) json).getString("academy_name");
        String academy_code = ((JSONObject) json).getString("academy_code");
        String department_role_id ="03";
        String id = grade+academy_code;

        Academy academy = new Academy();
        academy.setId(id);
        academy.setGrade(grade);
        academy.setAcademy_name(academy_name);
        academy.setAcademy_code(academy_code);
        academy.setDepartment_role_id(department_role_id);

        academyManager_Dao_Iface.addAcademy(academy);

        return "添加成功";
    }


}
