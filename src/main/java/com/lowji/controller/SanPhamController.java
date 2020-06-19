package com.lowji.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lowji.entity.DanhMucSanPham;
import com.lowji.entity.SanPham;
import com.lowji.service.DanhMucService;
import com.lowji.service.SanPhamService;

@Controller	
@RequestMapping("sanpham/")
public class SanPhamController {
	@Autowired
	DanhMucService danhMucService;
	
	@Autowired
	SanPhamService sanPhamService;
	
 @GetMapping("{id}/{tendanhmuc}")
 public String Default(ModelMap modelmap,@PathVariable int id,@PathVariable String tendanhmuc) {
	 List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
	 List<SanPham> listSanPhams = sanPhamService.LaySanPhamTheoMDM(id);//chọn danh mục, load ra sản phẩm
	 
  	 modelmap.addAttribute("danhmuc",danhMucSanPhams);
  	 modelmap.addAttribute("tendanhmuc",tendanhmuc);
  	 modelmap.addAttribute("lisSanPhams",listSanPhams);
	 return "sanpham";
 }
}
