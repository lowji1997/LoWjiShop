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
			<h3 style="color: red;">QUẢN LÍ ĐƠN HÀNG</h3>
			
			<table id = "table-sanpham" class = "table">
					<thead>
						<tr>
							<td>
								<div class="checkbox">
								  <label><input id ="checkall" type="checkbox" value=""></label>
								</div>
							</td>
							<td>MÃ HÓA ĐƠN</td>
							<td>TÊN KHÁCH HÀNG</td>
							<td>SỐ ĐIỆN THOẠI</td>
							<td>ĐỊA CHỈ</td>
							<td>HÌNH THỨC GIAO</td>
							<td>GHI CHÚ</td>
<!-- 							<td>TÊN SẢN PHẨM</td> -->
<!-- 							<td>SIZE</td> -->
<!-- 							<td>SỐ LƯỢNG</td> -->
<!-- 							<td>TỔNG TIỀN</td> -->
						</tr>
						
					</thead>
					
					<tbody>
						
						<c:forEach var = "value" items="${listHoaDon}">
						
							<tr>
								<td>
									<div class="checkbox">
										<label><input class = "checkboxhoaodon" type="checkbox" value="${value.getMahoadon()}"></label>
										</div> 
								</td>
											<td>${value.getMahoadon()}</td>
											<td>${value.getTenkhachhang()}</td>
											<td>${value.getSodt()}</td>	
											<td>${value.getDiachigiaohang()}</td>	
											<td>${value.getHinhthucgiaohang()}</td>
											<td>${value.getGhichu()}</td>
											
									<td><a href="adminchitietdonhang/${value.getMahoadon()}"  class = "xemhd btn btn-warning" style = "float: right" >XEM HÓA ĐƠN</a></td>
							</tr>
					
								
						</c:forEach>
					</tbody>
			
			</table>
			    
			</div>	
	</div>
	</div>
<jsp:include page="footer.jsp"/>
</body>

</html>