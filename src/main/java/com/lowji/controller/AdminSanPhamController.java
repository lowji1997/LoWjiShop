package com.lowji.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lowji.dao.SizeSanPhamDAO;
import com.lowji.entity.DanhMucSanPham;
import com.lowji.entity.MauSanPham;
import com.lowji.entity.SanPham;
import com.lowji.entity.SizeSanPham;
import com.lowji.service.DanhMucService;
import com.lowji.service.MauSanPhamService;
import com.lowji.service.SanPhamService;

@Controller
@RequestMapping("/adminsanpham")
public class AdminSanPhamController {
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucService danhMucService;
	
	@Autowired
	MauSanPhamService mauSanPhamService;
	
	@Autowired
	SizeSanPhamDAO sizeSanPhamService;
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);	
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		List<MauSanPham> listMauSanPham = mauSanPhamService.LayMauSanPham();
		List<SizeSanPham> listSizeSanPham = sizeSanPhamService.LaySizeSanPham();
		
		modelMap.addAttribute("listSanPham",listSanPhams);
		modelMap.addAttribute("danhmuc",danhMucSanPhams);
		modelMap.addAttribute("listsize", listSizeSanPham );
		modelMap.addAttribute("listmau", listMauSanPham );

		return "AdminSanPhamm";
	}
}
