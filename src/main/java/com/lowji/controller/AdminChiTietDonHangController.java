//package com.lowji.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.lowji.entity.ChiTietHoaDon;
//import com.lowji.entity.HoaDon;
//import com.lowji.service.AdminDonHangService;
//
//@Controller
//@RequestMapping("/adminchitietdonhang")
//public class AdminChiTietDonHangController {
//	@Autowired
//	AdminDonHangService aaaService;
//	@GetMapping("/{mahoadon}")
//	public String Default(@PathVariable int mahoadon, ModelMap modelMap) {
//		List<ChiTietHoaDon> listhoaDon = (List<ChiTietHoaDon>) aaaService.LayDanhSachChiTietHoaDonTheoMa(mahoadon);
//		
//		
//		modelMap.addAttribute("hoaDon", listhoaDon);
//		
//		return "AdminChiTietDonHang"; 
//	}
//
//}
