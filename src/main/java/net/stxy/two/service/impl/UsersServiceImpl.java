package net.stxy.two.service.impl;

import net.stxy.two.bean.Users;
import net.stxy.two.mapper.UsersMapper;
import net.stxy.two.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersMapper usersMapper;

    @Override
    public Users sel_one(Integer stu_id, String cour_name) {
        // TODO Auto-generated method stub
        return usersMapper.sel_one(stu_id, cour_name);
    }

    @Override
    public Users login2(Users users) {
        // TODO Auto-generated method stub
        return usersMapper.login2(users);
    }

    @Override
    public List<Users> list2() {
        return usersMapper.list2();
    }

    @Override
    public List<Users> sel_stu(Users users) {
        return usersMapper.sel_stu(users);
    }

    @Override
    public List<Users> sel_class(String stu_class) {
        return usersMapper.sel_class(stu_class);

    }

    @Override
    public int update_stu_do(Users users) {
        return usersMapper.update_stu_do(users);

    }

    @Override
    public int delete_grade(Users users) {
        return usersMapper.delete_grade(users);
    }

    @Override
    public int add_stu_do(Users users) {
        return usersMapper.add_stu_do(users);
    }

    @Override
    public int add_grade_do(Users users) {
        return usersMapper.add_grade_do(users);
    }


}
