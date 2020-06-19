package com.lowji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.MauSanPhamDAO;
import com.lowji.daoimp.MauSanPhamimp;
import com.lowji.entity.MauSanPham;

@Service
public class MauSanPhamService implements MauSanPhamimp {
	@Autowired
	MauSanPhamDAO mauSanPhamDAO;
	@Override
	public List<MauSanPham> LayMauSanPham() {
		
		return mauSanPhamDAO.LayMauSanPham();
	}

}
