package net.stxy.two.service;

import net.stxy.two.bean.Users;

import java.util.List;

public interface UsersService {

    public Users login2(Users users);

    public Users sel_one(Integer stu_id, String cour_name);

    public List<Users> list2();

    public List<Users> sel_stu(Users users);

    public List<Users> sel_class(String stu_class);

    public int update_stu_do(Users users);

    public int delete_grade(Users users);

    public int add_stu_do(Users users);

    public int add_grade_do(Users users);

    public int update_profile(Users users);

}
