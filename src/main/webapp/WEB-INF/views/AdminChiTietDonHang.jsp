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
			<h3 style="color: red;">CHI TIẾT ĐƠN HÀNG</h3><br/>
			
			<table id = "table-sanpham" class = "table">
					<thead>
						<tr>
<!-- 							<td> -->
<!-- 								<div class="checkbox"> -->
<!-- 								  <label><input id ="checkall" type="checkbox" value=""></label> -->
<!-- 								</div> -->
<!-- 							</td> -->
							<td>TÊN SẢN PHẨM</td>
							<td>SIZE</td>
							<td>SỐ LƯỢNG</td>
							<td>SỐ TIỀN</td>
						</tr>
						
					</thead>
					
					<tbody>
						<c:forEach var = "chitiethoadon" items="${listhoaDon}">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
						
					</tbody>
					
			</table>
			    <span></span>
			</div>	
	</div>
	</div>
<jsp:include page="footer.jsp"/>
</body>

</html>