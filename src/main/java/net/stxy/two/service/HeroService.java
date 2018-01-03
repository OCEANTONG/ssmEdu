package net.stxy.two.service;

import java.util.List;

import net.stxy.two.bean.Hero;

public interface HeroService {

	// 注册 插入
	public void insert(Hero hero);

	// 登陆 通过用户名和密码查找操作
	public Hero login(Hero hero);

	// 用户列表
	public List<Hero> list();

	// 通过id查询一条用户信息
	public Hero selectOneById(Integer id);

	// 删除
	public int delete(Hero hero);

	// 修改
	public int update(Hero hero);
}
