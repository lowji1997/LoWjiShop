package com.lowji.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lowji.entity.DanhMucSanPham;
import com.lowji.entity.GioHang;
import com.lowji.entity.SanPham;
import com.lowji.service.DanhMucService;
import com.lowji.service.SanPhamService;

@Controller
@RequestMapping("chitiet/")
@SessionAttributes("giohang")
public class ChiTietController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucService danhMucService;
	
	@GetMapping("{masanpham}")
	public String Default(@PathVariable int masanpham, ModelMap modelmap ,HttpSession httpSession) {
		
		SanPham sanpham = sanPhamService.LayDanhSachTheoMSP(masanpham);
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		
		if(httpSession.getAttribute("giohang") != null) {
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelmap.addAttribute("soluongspgiohang", gioHangs.size());
		}
		
		
		modelmap.addAttribute("sanpham",sanpham);
		modelmap.addAttribute("danhmuc",danhMucSanPhams);
		
		
		return "chitietSANPHAM";
		
	}
}
