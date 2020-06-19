package com.lowji.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.NhanVienDAO;
import com.lowji.daoimp.NhanVienimp;
import com.lowji.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienimp{
	@Autowired
	NhanVienDAO nhanviendao;

	@Override
	public boolean KiemTraDangNhap(String email, String matkhau) {
		boolean kiemtra=nhanviendao.KiemTraDangNhap(email, matkhau);
		return kiemtra;
	}

	@Override
	public boolean ThemNhanVien(NhanVien nhanVien) {
		boolean ktThem= nhanviendao.ThemNhanVien(nhanVien);
		return ktThem;
	}
	
}