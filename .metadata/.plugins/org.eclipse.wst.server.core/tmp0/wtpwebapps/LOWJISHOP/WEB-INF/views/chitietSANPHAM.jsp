<%@page import="com.lowji.entity.NhanVien"%>
<%@page import="com.lowji.entity.NhanVien" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
		
		<div id = "headerr-chitiet" style ="background-color: gray;height: 235px"class =  "container-fluid">
			<nav class="navbar navbar-default none_nav">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="#"><img src='<c:url value= "/resources/image/trangchu/iconlowji.png" />'></a>
			    </div>
			
			    
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav navbar-center">

			        <li class="active"><a href="http://localhost:8080/LOWJISHOP/">TRANG CHỦ</a></li>
			        	<li class="dropdown">
			         	 	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
			          		<ul class="dropdown-menu">
			            		<li><a href="#">Action</a></li>
			            		<li><a href="#">Another action</a></li>
			            		<li><a href="#">Something else here</a></li>
			            		<li role="separator" class="divider"></li>
			            		<li><a href="#">Separated link</a></li>
			            		<li role="separator" class="divider"></li>
			            		<li><a href="#">One more separated link</a></li>
			          		</ul>
			          	</li>
			        <li><a href="#">DỊCH VỤ</a></li>
			        <li><a href="#">LIÊN HỆ</a></li>
			        
			        
			        </li>
			      </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
			      <c:choose>
			      	<c:when test="${chuoi !=null}">
			      		<li><a href="dangnhap/">${chuoi}</a></li>
			      	</c:when>
			      	<c:otherwise>
			      		<li><a href="dangnhap/">ĐĂNG NHẬP</a></li>
			      	</c:otherwise>
			      </c:choose>   
			        <li><a href="http://localhost:8080/LOWJISHOP/giohang/"><img src='<c:url value= "/resources/image/trangchu/icongiohang.png" />'><span class = "Giohang">${soluongspgiohang}</span></a></li> 
			      </ul>
			    </div>
			  </div>
			</nav>
		</div>
			
			<div class="container">
				<div class = "row">
						<div class = "col-sm-5 col-md-4">
						    <img  style ="width: 100%;margin-top: 20px"src='<c:url value= "/resources/image/sanpham/${sanpham.getHinhsanpham() }" />'/>
						 </div>   
									<div class = "col-sm-7 col-md-8">
									     <h3 id = "tensp" data-masp = "${sanpham.getMasanpham()}">${sanpham.getTensanpham()}</h3>
											<h4 id = "giatien" data-value = "${sanpham.getGiatien()}"style="color: red;">${sanpham.getGiatien()} VNĐ</h4>
											<table class  = table border="3">
												<tbody>
													<tr>
												      <th>MÀU SẮC</th>
												      <th>SIZE</th>
												      <th>SỐ LƯỢNG</th>
												      <th></th>
												   	</tr>
												<c:forEach var = "chitietsanpham" items="${sanpham.getChitietsanpham()}">
													
													<tr>
														<td class = "mau" data-mamau= "${chitietsanpham.getMausanpham().getMamau()}">${chitietsanpham.getMausanpham().getTenmau()}</td>  
														<td class = "size" data-masize= "${chitietsanpham.getSizesanpham().getMasize()}">${chitietsanpham.getSizesanpham().getSize()}</td>
														<td class = "soluong" >${chitietsanpham.getSoluong()}</td>
														<td><button  data-machitiet="${chitietsanpham.getMachitietsanpham()}"class = " btn btn-warning giohang" >MUA NGAY</button></td>
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