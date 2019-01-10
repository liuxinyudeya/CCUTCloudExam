package org.liuxinyu.project.teaching.academy.domain;

/**
 * @author liuxinyu
 * @date 2019/1/9 0009 - 13:47
 */
public class Academy {
    String id;
    String grade;
    String department_role_id;
    String academy_code;
    String academy_name;
    String specialty_code;
    String specialty_name;
    String class_no;
    String manager_id;
    String comment;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getDepartment_role_id() {
        return department_role_id;
    }

    public void setDepartment_role_id(String department_role_id) {
        this.department_role_id = department_role_id;
    }

    public String getAcademy_code() {
        return academy_code;
    }

    public void setAcademy_code(String academy_code) {
        this.academy_code = academy_code;
    }

    public String getAcademy_name() {
        return academy_name;
    }

    public void setAcademy_name(String academy_name) {
        this.academy_name = academy_name;
    }

    public String getSpecialty_code() {
        return specialty_code;
    }

    public void setSpecialty_code(String specialty_code) {
        this.specialty_code = specialty_code;
    }

    public String getSpecialty_name() {
        return specialty_name;
    }

    public void setSpecialty_name(String specialty_name) {
        this.specialty_name = specialty_name;
    }

    public String getClass_no() {
        return class_no;
    }

    public void setClass_no(String class_no) {
        this.class_no = class_no;
    }

    public String getManager_id() {
        return manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
