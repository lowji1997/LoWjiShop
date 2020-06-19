package com.lowji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lowji.dao.DanhMucDAO;
import com.lowji.daoimp.DanhMucimp;
import com.lowji.entity.DanhMucSanPham;
@Service
public class DanhMucService implements DanhMucimp{
	
	@Autowired
	DanhMucDAO danhmucdao;
	
	@Override
	
	public List<DanhMucSanPham> LayDanhMuc() {
		return danhmucdao.LayDanhMuc();
		 
	}

}
