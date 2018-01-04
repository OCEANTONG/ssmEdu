package net.stxy.two.mapper;

import net.stxy.two.bean.Students;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {

    //登陆
    public Students login3(@Param("user_name") String user_name, @Param("password") String password);

    public int register(Students students);

    public List<Students> query(Students students);

    public int update_profile(Students students);

}
