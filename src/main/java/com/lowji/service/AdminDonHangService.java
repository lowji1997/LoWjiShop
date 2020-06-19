package com.lowji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.AdminDonHangDAO;
import com.lowji.daoimp.AdminDonHangimp;
import com.lowji.entity.ChiTietHoaDon;
import com.lowji.entity.HoaDon;

@Service
public class AdminDonHangService implements AdminDonHangimp{
	@Autowired
	AdminDonHangDAO aaaDao;
	@Override
	public List<HoaDon> LayDanhSachHoaDon(int hdbatdau) {
		
		return aaaDao.LayDanhSachHoaDon(hdbatdau);
	}
//	@Override
//	public List<ChiTietHoaDon> LayDanhSachChiTietHoaDonTheoMa(int mahoadon) {
//		return  aaaDao.LayDanhSachChiTietHoaDonTheoMa(mahoadon);
//	}

}
