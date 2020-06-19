package com.lowji.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lowji.daoimp.SizeSanPhamimp;
import com.lowji.entity.SizeSanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SizeSanPhamDAO implements SizeSanPhamimp {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<SizeSanPham> LaySizeSanPham() {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM SIZESANPHAM";
		
		List<SizeSanPham> listSizeSanPham = session.createQuery(query).getResultList();
		
		return listSizeSanPham;
	}
}
