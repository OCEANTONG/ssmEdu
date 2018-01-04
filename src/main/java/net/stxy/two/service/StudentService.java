package net.stxy.two.service;

import net.stxy.two.bean.Students;
import net.stxy.two.bean.Users;

import java.util.List;

public interface StudentService {

    public Students login3(String user_name, String password);
    public int register(Students students);
    public List<Students> query(Students students);
    public int update_profile(Students students);

}
