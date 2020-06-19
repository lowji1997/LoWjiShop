package com.lowji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.ChiTietHoaDonDAO;
import com.lowji.daoimp.ChiTietHoaDonimp;
import com.lowji.entity.ChiTietHoaDon;
import com.lowji.entity.ChiTietHoaDonId;

@Service
public class ChiTietHoaDonService  implements ChiTietHoaDonimp{
	@Autowired
	ChiTietHoaDonDAO chiTietHoaDonDAO;
	@Override
	public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		
		return chiTietHoaDonDAO.ThemChiTietHoaDon(chiTietHoaDon);
	}
	@Override
	public List<ChiTietHoaDon> LayDanhSachChiTietHoaDonTheoMaChiTietHoaDon(int masanpham) {
		return chiTietHoaDonDAO.LayDanhSachChiTietHoaDonTheoMaChiTietHoaDon(masanpham);
		 
	}


}
