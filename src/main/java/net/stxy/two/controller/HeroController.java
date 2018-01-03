package net.stxy.two.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.stxy.two.bean.Hero;
import net.stxy.two.service.HeroService;

@Controller
@RequestMapping("/hero")
public class HeroController {

	@Autowired
	private HeroService heroService;
	
	//注册
	//localhost:8080/ssmEdu/hero/save.do
	@RequestMapping("/save")
	public String save(Hero hero) {
		heroService.insert(hero);
		return "/login.html";
	}
	
	//登陆
	//localhost:8080/ssmEdu/hero/login.do
	@RequestMapping("/login")
	public String login(Hero hero,Model model) {
		Hero H = heroService.login(hero);
		if (H !=null) {
			return "/hero/list.do";
		}
		return "/login.html";
	}
	
	//用户列表
	//localhost:8080/ssmEdu/hero/list.do
	@RequestMapping("/list")
	public String list(Model model) {
		List<Hero> H = heroService.list();
		model.addAttribute("heroList", H);
		return "/list.jsp";
	}
	
	
	//通过主键id查找信息
	//localhost:8080/ssmEdu/hero/id.do?id=20
	@RequestMapping("/id")
	public String selectOneById(@RequestParam("id") Integer id,Model model) {
		Hero H = heroService.selectOneById(id);
		model.addAttribute("heroList", H);
		return "/list-id.jsp";
	}
	
	//修改
	//localhost:8080/ssmEdu/hero/update.do
	@RequestMapping("/update")
	public String update(Hero hero,Model model) {
		int H = heroService.update(hero);
		if (H > 0) {
			List<Hero> list = heroService.list();
			model.addAttribute("heroList", list);
			return "/list.jsp";
		}
		return null;
	}
	
	//删除
	//localhost:8080/ssmEdu/hero/delete.do
	@RequestMapping("/delete")
	public String delete(Hero hero,Model model) {
		int H = heroService.delete(hero);
		if (H > 0) {
			List<Hero> list = heroService.list();
			model.addAttribute("heroList", list);
			return "/list.jsp";
		}
		return null;
		
	}
}
