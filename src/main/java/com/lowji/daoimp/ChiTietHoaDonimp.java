package com.lowji.daoimp;

import java.util.List;

import com.lowji.entity.ChiTietHoaDon;

public interface ChiTietHoaDonimp {
 boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
 List<ChiTietHoaDon> LayDanhSachChiTietHoaDonTheoMaChiTietHoaDon(int machitiethoadon);

}
