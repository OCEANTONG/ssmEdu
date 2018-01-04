package net.stxy.two.bean;

public class Grade {

    private int grd_id;
    private int stu_id;
    private int cour_id;
    private int grades;

    public int getGrd_id() {
        return grd_id;
    }

    public void setGrd_id(int grd_id) {
        this.grd_id = grd_id;
    }

    public int getStu_id() {
        return stu_id;
    }

    public void setStu_id(int stu_id) {
        this.stu_id = stu_id;
    }

    public int getCour_id() {
        return cour_id;
    }

    public void setCour_id(int cour_id) {
        this.cour_id = cour_id;
    }

    public int getGrades() {
        return grades;
    }

    public void setGrades(int grades) {
        this.grades = grades;
    }

    @Override
    public String toString() {
        return "Grade [grd_id=" + grd_id + ", stu_id=" + stu_id + ", cour_id=" + cour_id + ", grades=" + grades + "]";
    }


}
