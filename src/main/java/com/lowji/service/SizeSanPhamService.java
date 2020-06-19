package com.lowji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.SizeSanPhamDAO;
import com.lowji.daoimp.SizeSanPhamimp;
import com.lowji.entity.SizeSanPham;
@Service
public class SizeSanPhamService implements SizeSanPhamimp {
	@Autowired
	SizeSanPhamDAO sizeSanPhamDAO;
	@Override
	public List<SizeSanPham> LaySizeSanPham() {
		
		return sizeSanPhamDAO.LaySizeSanPham();
	}

}
