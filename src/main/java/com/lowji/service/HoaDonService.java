package com.lowji.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.HoaDonDAO;
import com.lowji.daoimp.HoaDonimp;
import com.lowji.entity.HoaDon;

@Service
public class HoaDonService implements HoaDonimp{
@Autowired
HoaDonDAO hoaDonDAO;

@Override
public int ThemHoaDon(HoaDon hoaDon) {
	return hoaDonDAO.ThemHoaDon(hoaDon);
	
}

}
