package net.stxy.two.service.impl;

import net.stxy.two.bean.Students;
import net.stxy.two.mapper.StudentMapper;
import net.stxy.two.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public Students login3(String user_name, String password) {
        // TODO Auto-generated method stub
        return studentMapper.login3(user_name, password);
    }


    @Override
    public int register(Students students) {
        return studentMapper.register(students);
    }

    @Override
    public int update_profile(Students students) {
        return studentMapper.update_profile(students);
    }

    @Override
    public List<Students> query(Students students) {
        return studentMapper.query(students);
    }
}
