package net.stxy.two.controller;

import net.stxy.two.bean.Users;
import net.stxy.two.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private UsersService usersService;

    //登陆
    //localhost:8080/ssmEdu/hero/login.do
    @RequestMapping("/login2")
    public String login2(Users users, Model model, HttpSession session) {
        Users U = usersService.login2(users);
        if (U != null) {
            session.setAttribute("Users", U);
            return "/zhuye.jsp";
        }
        return "/update404.html";
    }

    //查找学生姓名后的修改页面
    @RequestMapping("/sel_one")
    public String sel_one(Integer stu_id, String cour_name, Model model) {
        Users U = usersService.sel_one(stu_id, cour_name);
        if (U != null) {
            model.addAttribute("stu_u", U);
            return "/update_stu.jsp";
        }
        return "/update404.html";
    }

    //查看全部学生信息
    @RequestMapping("/list2")
    public String list2(Model model) {
        List<Users> UU = usersService.list2();
        model.addAttribute("usersList", UU);
        return "/sel_all.jsp";
    }

    //查看一个学生信息
    @RequestMapping("/sel_stu")
    public String sel_stu(Users users, Model model) {
        List<Users> One_stu = usersService.sel_stu(users);
        if (One_stu != null) {
            model.addAttribute("one_stuList", One_stu);
            return "/one_stu.jsp";
        } else {
            return "/update404.html";
        }
    }

    //查看一个班级
    @RequestMapping("/sel_class")
    public String sel_class(String stu_class, Model model) {
        List<Users> One_class = usersService.sel_class(stu_class);
        if (One_class != null) {
            model.addAttribute("List33", One_class);
            return "/sel_class.jsp";
        } else {
            return "/update404.html";
        }
    }

    //修改学生信息，课程，成绩
    @RequestMapping("/update_stu_do")
    public String update_stu_do(Users users) {
        int upup = usersService.update_stu_do(users);
        if (upup > 0) {
            return "/return.html";
        } else {
            return "/update404.html";
        }
    }

    //删除学生成绩
    @RequestMapping("/delete_grade")
    public String delete_grade(Users users) {
        int del = usersService.delete_grade(users);
        if (del > 0) {
            return "/return.html";
        } else {
            return "/update404.html";
        }
    }

    //添加学生
    @RequestMapping("/add_stu_do")
    public String add_stu_do(Users users) {
        int addstu = usersService.add_stu_do(users);
        if (addstu > 0) {
            return "/return.html";
        } else {
            return "/update404.html";
        }
    }

    //录入成绩
    @RequestMapping("/add_grade_do")
    public String add_grade_do(Users users) {
        int addgrd = usersService.add_grade_do(users);
        if (addgrd > 0) {
            return "/return.html";
        } else {
            return "/update404.html";
        }
    }

    //退出
    @RequestMapping("/to_exit")
    public String to_exit(HttpSession session) {
        session.invalidate();
        return "redirect:/indexxx.html";//redirect是修改路径的意思
        //因为http://localhost:8080/ssmEdu这个前面部分是固定的
        //redirect的作用就是把indexxx.html直接加在前面那部分后面

    }

    //个人信息
    @RequestMapping("/profile")
    public String profile(Users users) {
        return "/teacher_profile.jsp";
    }

    //更新个人信息
    @RequestMapping("/update_profile")
    public String update_profile(@RequestParam String user_name, @RequestParam String password, HttpSession session) {
        Users users_login = (Users) session.getAttribute("Users");
        Users users = new Users();
        users.setUser_id(users_login.getUser_id());
        users.setUser_name(user_name);
        users.setPassword(password);
        int res = usersService.update_profile(users);
        System.out.println(res);
        if (res == 1) {
            session.setAttribute("Users", users);
            return "/teacher_profile.jsp";
        } else {
            return "/update404.html";
        }
    }


}
