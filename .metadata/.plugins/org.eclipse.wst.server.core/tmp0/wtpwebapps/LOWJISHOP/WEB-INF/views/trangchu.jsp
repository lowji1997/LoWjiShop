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
		
		<div id = "header" class =  "container-fluid">
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
			
			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav navbar-center">

			        <li class="active"><a href="http://localhost:8080/LOWJISHOP/">TRANG CHỦ</a></li>
			        	<li class="dropdown">
			         	 	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SẢN PHẨM <span class="caret"></span></a>
			          		<ul class="dropdown-menu">
			          		<c:forEach var= "danhmucsanpham" items="${danhmuc}" >
									<li><a href='<c:url value= "/sanpham/${danhmucsanpham.getMadanhmuc()}/${danhmucsanpham.getTendanhmuc()}" />'>${danhmucsanpham.getTendanhmuc()}</a></li>
									<li role="separator" class="divider"></li>
								</c:forEach>
			          		
			            		
			          		</ul>
			          	</li>
			        <li><a href="#">DỊCH VỤ</a></li>
			        <li><a href="#">LIÊN HỆ</a></li>
			        
			        
			        </li>
			      </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
			      <li><a href="dangnhap/">ĐĂNG NHẬP</a></li>
  
			        <li><a href="giohang/"><img src='<c:url value= "/resources/image/trangchu/icongiohang.png" />'></a></li>
			        
			      
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
		
		</div>
			
		<div id = "title-sanpham" class="container">
			<span>SẢN PHẨM HOT</span>
			<div class = "row" style="margin-top: 30px">
				<c:forEach var="sanpham" items="${lisSanPhams}">
					<div class = "col-md-4 col-sm-6" >
						<a href="chitiet/${sanpham.getMasanpham()}">
							<div class ="sanpham wow jello ">
								<img alt="hinh" src='<c:url value= "/resources/image/sanpham/${sanpham.getHinhsanpham()}" />'/><br/>
								<span>${sanpham.getTensanpham()}</span><br/>
								<span class="gia">${sanpham.getGiatien()}VNĐ</span>
							</div>
						</a>
						
				</div>
				
				 </c:forEach>		
			</div>
		</div>
		
<jsp:include page="footer.jsp"/>
</body>

</html>