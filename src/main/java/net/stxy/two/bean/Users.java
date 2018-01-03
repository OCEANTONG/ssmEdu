package net.stxy.two.bean;

public class Users {
    //用户表
    private int user_id;
    private String user_name;
    private String password;
    //学生表
    private int stu_id;
    private String stu_name;
    private String stu_sex;
    private String stu_class;
    //课程表
    private int cour_id;
    private String cour_name;
    //成绩表
    private int grd_id;
    private int grd_stu_id;
    private int grd_cour_id;
    private int grades;

    public int getStu_id() {
        return stu_id;
    }

    public void setStu_id(int stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getStu_sex() {
        return stu_sex;
    }

    public void setStu_sex(String stu_sex) {
        this.stu_sex = stu_sex;
    }

    public String getStu_class() {
        return stu_class;
    }

    public void setStu_class(String stu_class) {
        this.stu_class = stu_class;
    }

    public int getCour_id() {
        return cour_id;
    }

    public void setCour_id(int cour_id) {
        this.cour_id = cour_id;
    }

    public String getCour_name() {
        return cour_name;
    }

    public void setCour_name(String cour_name) {
        this.cour_name = cour_name;
    }

    public int getGrd_id() {
        return grd_id;
    }

    public void setGrd_id(int grd_id) {
        this.grd_id = grd_id;
    }

    public int getGrd_stu_id() {
        return grd_stu_id;
    }

    public void setGrd_stu_id(int grd_stu_id) {
        this.grd_stu_id = grd_stu_id;
    }

    public int getGrd_cour_id() {
        return grd_cour_id;
    }

    public void setGrd_cour_id(int grd_cour_id) {
        this.grd_cour_id = grd_cour_id;
    }

    public int getGrades() {
        return grades;
    }

    public void setGrades(int grades) {
        this.grades = grades;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Users [user_id=" + user_id + ", user_name=" + user_name + ", password=" + password + ", stu_id="
                + stu_id + ", stu_name=" + stu_name + ", stu_sex=" + stu_sex + ", stu_class=" + stu_class + ", cour_id="
                + cour_id + ", cour_name=" + cour_name + ", grd_id=" + grd_id + ", grd_stu_id=" + grd_stu_id
                + ", grd_cour_id=" + grd_cour_id + ", grades=" + grades + "]";
    }


}
