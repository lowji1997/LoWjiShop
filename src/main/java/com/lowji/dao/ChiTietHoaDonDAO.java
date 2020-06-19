package com.lowji.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lowji.daoimp.ChiTietHoaDonimp;
import com.lowji.entity.ChiTietHoaDon;
import com.lowji.entity.ChiTietHoaDonId;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietHoaDonDAO implements ChiTietHoaDonimp {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		Session session = sessionFactory.getCurrentSession();
		ChiTietHoaDonId id  = (ChiTietHoaDonId) session.save(chiTietHoaDon);
		
		if(id !=null) {
			return true;
		}else {
			return false;
		}

	}
	@Override
	@Transactional
	public List<ChiTietHoaDon> LayDanhSachChiTietHoaDonTheoMaChiTietHoaDon(int machitiethoadon) {
		Session session = sessionFactory.getCurrentSession();
		String query = "FROM dbo.HOADON hd,dbo.CHITIETHOADON cthd,dbo.CHITIETSANPHAM ctsp,dbo.SANPHAM sp WHERE hd.mahoadon=4 AND hd.mahoadon= cthd.mahoadon AND cthd.machitietsanpham=ctsp.machitietsanpham AND ctsp.masanpham = sp.masanpham";
		
		List<ChiTietHoaDonId> chiTietHoaDons = (List<ChiTietHoaDonId>) session.createQuery(query);
	for (ChiTietHoaDonId chiTietHoaDonId : chiTietHoaDons) {
		System.out.println("masp"+ chiTietHoaDonId.getMahoadon());
	}
		return null;
	}

}
