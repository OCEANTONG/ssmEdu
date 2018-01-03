package net.stxy.two.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.two.bean.Hero;
import net.stxy.two.mapper.HeroMapper;
import net.stxy.two.service.HeroService;
@Service
public class HeroServiceImpl implements HeroService {
	
	@Autowired
	private HeroMapper heroMapper;

	@Override
	public void insert(Hero hero) {
		heroMapper.insert(hero);
	}

	@Override
	public Hero login(Hero hero) {
		return heroMapper.login(hero);
	}

	@Override
	public List<Hero> list() {
		return heroMapper.list();
	}

	@Override
	public Hero selectOneById(Integer id) {
		return heroMapper.selectOneById(id);
	}

	@Override
	public int delete(Hero hero) {
		return heroMapper.delete(hero);
	}

	@Override
	public int update(Hero hero) {
		return heroMapper.update(hero);
	}

}
