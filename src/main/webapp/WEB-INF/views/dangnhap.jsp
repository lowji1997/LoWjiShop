<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HELLO</title>
<jsp:include page="header.jsp"/>

</head>
<body id="body-login">
	<div id="body-flex-login">
		<div id="container-login">
			<div id="container-login-left">
			</div>
			<div id="container-login-right">
				<div id="header-top-right">
					<span class="actived" id ="dangnhapp" style="margin-left: 50px">ĐĂNG NHẬP ADMIN </span> 
				</div>
				<div id = "container-center-login-right">
					<form action="" method="get" accept-charset="utf-8" id="valiDangnhap">
							<div class = "container-login-login"id =" container-center-login-right">
							
								<input id = "email" name ="email" class = "material-textinput input-icon-email"    placeholder="Tài Khoản" type="text"/><br/><p></p>
								<input id = "matkhau" name ="matkhau" class = "material-textinput input-icon-password" placeholder="Mật Khẩu"  type="password"/><br/><p></p>
								<input id = "dangnhap"class = "material-primary-button" type="submit" value="ĐĂNG NHẬP"/><br/>
					</form>	
							</div><br>
								<span style="margin-left: 70px" id = "ketqua"></span>
				
				</div>

			</div>
		</div>
	</div>
</body>
<jsp:include page="footer.jsp"/>
</html>