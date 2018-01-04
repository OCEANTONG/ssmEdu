package net.stxy.two.controller;

import net.stxy.two.bean.Students;
import net.stxy.two.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    //登陆
    @RequestMapping("/login3")
    public String login3(@RequestParam String user_name, @RequestParam String password, Model model, HttpSession session) {
        Students S = studentService.login3(user_name, password);
        if (S != null) {
            session.setAttribute("Student", S);
//            return "/zhuye.jsp";
            return "/zhuye_student.jsp";
        }
        return "/update404.html";
    }


    @RequestMapping("/register")
    public String register(@RequestParam int user_name, @RequestParam String stu_name, @RequestParam String password, @RequestParam String stu_sex, @RequestParam String stu_class, HttpSession session) {
        Students s = new Students();
        s.setStu_id(user_name);
        s.setStu_name(stu_name);
        s.setPassword(password);
        s.setStu_sex(stu_sex);
        s.setStu_class(stu_class);
        int result = studentService.register(s);
        if (result == 1) {
            session.setAttribute("Student", s);
            return "/zhuye_student.jsp";
        } else {
            return "/update404.html";
        }
    }

    @RequestMapping("/query")
    public String query(Model model, HttpSession session) {
        Students students = (Students) session.getAttribute("Student");
        List<Students> UU = studentService.query(students);
        model.addAttribute("usersList", UU);
        return "/query.jsp";
    }

    //个人信息
    @RequestMapping("/profile")
    public String profile(Students students) {
        return "/student_profile.jsp";
    }

    //更新个人信息
    @RequestMapping("/update_profile")
    public String update_profile(@RequestParam String password, HttpSession session) {
        Students students = (Students) session.getAttribute("Student");
        students.setPassword(password);
        int res = studentService.update_profile(students);
        if (res == 1) {
            return "/student_profile.jsp";
        } else {
            return "/update404.html";
        }
    }
}
