package com.lowji.daoimp;

import com.lowji.entity.NhanVien;

public interface NhanVienimp {
	boolean KiemTraDangNhap(String email,String matkhau);
	boolean ThemNhanVien(NhanVien nhanvien);
}
