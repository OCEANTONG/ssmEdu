package net.stxy.two.mapper;

import net.stxy.two.bean.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsersMapper {

    //登陆
    public Users login2(Users users);

    //查找学生姓名后的修改页面
    public Users sel_one(@Param("stu_id") Integer stu_id, @Param("cour_name") String cour_name);

    //显示所有学生成绩
    public List<Users> list2();

    //查找学生姓名
    public List<Users> sel_stu(Users users);

    //显示班级
    public List<Users> sel_class(String stu_class);

    //修改学生信息，课程，成绩
    public int update_stu_do(Users users);

    //删除学生成绩
    public int delete_grade(Users users);

    //添加学生
    public int add_stu_do(Users users);

    //录入成绩
    public int add_grade_do(Users users);

    //更新个人信息
    public int update_profile(Users users);


}
