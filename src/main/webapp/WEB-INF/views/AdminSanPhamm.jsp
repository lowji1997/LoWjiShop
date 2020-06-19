<%@ page language="java" contentType="text/html; UTF-8"
     pageEncoding="UTF-8"%> 
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<html>
<head>
<jsp:include page="header.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HELLO</title>
</head>
<body>	
  <div class="page-container container">
   
<div class="left-content">
		<div class = "row"> 
			<h3 style="color: red;">QUẢN LÍ SẢN PHẨM</h3>
			
			<div class = "col-md-4 col-sm-12 form-group">
			<form id ="formsanpham" action="">
				<label for = "tensanpham"> TÊN SẢN PHẨM</label>
				<input type = "text" name="tensanpham" id = "tensanpham" class = "form-control"placeholder = "Nhập vào tên sản phẩm"/></br>
				
				<label for = "giatien"> GIÁ TIỀN</label>
				<input type = "text" id = "giatien" name = "giatien" class = "form-control"placeholder = "Nhập vào giá tiền"/></br>
				
				<label for="danhmucsanpham">DANHMUC</label>
				  <select name = "danhmucsanpham" class="form-control" id="danhmucsanpham">
				  <c:forEach var = "valuedanhmuc" items="${danhmuc}">
				  		<option value="${valuedanhmuc.getMadanhmuc()}">${valuedanhmuc.getTendanhmuc()}</option>
				  </c:forEach>
				    
				  </select><br/>
				<label class="radio-inline"><input type="radio" name="gianhcho" id = "namm" value="nam">Nam</label>
				<label class="radio-inline"><input type="radio" name="gianhcho" id = "nuu" value="nu">Nữ</label></br>
				<br/>
				<label for = "mota"> MÔ TẢ</label>
				<textarea rows = "5" type = "text" name ="mota"id = "mota" class = "form-control"placeholder = "Nhập vào mô tả"></textarea></br>
				
				<label>HÌNH ẢNH</span></br>
				<input  for = "hinhanh" type = "file" id = "hinhanh" name = "hinhanh"class = "form-control"placeholder = "Nhập vào giá tiền"/></br>
				</label>	
					</form>		
					
				<div id = "containerchitietsanpham">
						<div  class = "chitietsanpham">
						<span>CHI TIẾT SẢN PHẨM</span></br>
					 <select name = "sizesanpham" class="form-control" id="sizesanpham">
					  <c:forEach var = "valuesize" items="${listsize}">
					  		<option value="${valuesize.getMasize()}">${valuesize.getSize()}</option>
					  </c:forEach>
					    
					  </select><br/>
					   <select name = "mausanpham" class="form-control" id="mausanpham">
					  <c:forEach var = "valuemau" items="${listmau}">
					  		<option value="${valuemau.getMamau()}">${valuemau.getTenmau()}</option>
					  </c:forEach>
					    
					  </select><br/>
					
					<input min = "1"  value = "1" type = "number" id = "soluong" name = "soluong" class = "form-control"placeholder = "Nhập vào số lượng"/></br></br>
					<button class = "btn btn-primary btnn-chitiet">THÊM CHI TIẾT</button></br></br>		
				</div>	
				</div>
				
				<div id ="chitietsanpham" class = "chitietsanpham" >
						<span>CHI TIẾT SẢN PHẨM</span></br>
					 <select name = "sizesanpham" class="form-control" id="sizesanpham">
					  <c:forEach var = "valuesize" items="${listsize}">
					  		<option value="${valuesize.getMasize()}">${valuesize.getSize()}</option>
					  </c:forEach>
					    
					  </select><br/>
					   <select name = "mausanpham" class="form-control" id="mausanpham">
					  <c:forEach var = "valuemau" items="${listmau}">
					  		<option value="${valuemau.getMamau()}">${valuemau.getTenmau()}</option>
					  </c:forEach>
					    
					  </select><br/>
					
					<input min = "1"  value = "1" type = "number" id = "soluong" name = "soluong" class = "form-control"placeholder = "Nhập vào số lượng"/></br></br>
					<button class = "btn btn-primary btnn-chitiet">THÊM CHI TIẾT</button></br></br>		
				</div>	
				
				<button id = "btnthemsanpham" class = "btn btn-info">Thêm sản phẩm</button></br></br>
				<button id = "btnCAPNHAT" class = "btn btn-info hidden">Cập nhật</button></br></br>
				<button id = "btnTHOAT" class = "btn btn-info hidden">Thoát</button></br></br>
					
			</div>	
			<div class = "col-md-8 col-sm-12">

			<table id = "table-sanpham" class = "table">
					<thead>
						<tr>
							<td>
								<div class="checkbox">
								  <label><input id ="checkall" type="checkbox" value=""></label>
								</div>
							</td>
							<td>TÊN SẢN PHẨM</td>
							<td>GIÁ TIỀN</td>
							<td>GIÀNH CHO</td>
						</tr>
						
					</thead>
					
					<tbody>
						<c:forEach var = "value" items="${listSanPham}">
													
								<tr>
									<td>
										<div class="checkbox">
										  <label><input class = "checkboxsanpham" type="checkbox" value="${value.getMasanpham()}"></label>
										</div> 
									</td>
									<td class = "tensp" data-masp = "${value.getMasanpham()}">${value.getTensanpham()}</td>
									<td class = "giatienn">${value.getGiatien()}</td>
									<td class = "gianhcho">${value.getGianhcho()}</td>	
									<td class = "capnhatsanpham btn btn-info" data-id = "${value.getMasanpham()}">SỬA</td>
									<td class = "xoasp btn btn-warning" style = "float: right" >Xóa sản phẩm</td>
								</tr>
						</c:forEach>
					</tbody>
			
			</table>
			    
			</div>
			</div>		
	</div>
	</div>
<jsp:include page="footer.jsp"/>
</body>

</html>