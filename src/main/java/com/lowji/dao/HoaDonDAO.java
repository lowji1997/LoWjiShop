package com.lowji.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lowji.daoimp.HoaDonimp;
import com.lowji.entity.HoaDon;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDAO implements HoaDonimp{
	
	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public int ThemHoaDon(HoaDon hoaDon) {
		Session session  = sessionFactory.getCurrentSession();
		int id = (int) session.save(hoaDon);
		if(id >0) {
			return id;
		}else {
			return 0;
		}
	}

}
