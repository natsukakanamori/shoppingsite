<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="black.jsp"%>



<br>
<br>
<main>
	<div id="wrapper">
		<div class="contents">
		<br><br><br><br><br><br><br><br><br>
			<p class="large-letters">ADMINISTRATOR SCREEN</p>
			<p class="small-letters">
				<span class="margin">product list</span>
			</p>
		</div>

		<div class="menu">
			<table class="product-table">
				<tr>
					<th>productId</th>
					<th>productName</th>
					<th>price</th>
					<th>image</th>
					<th>categoryId</th>
				</tr>
				<c:forEach var="product" items="${list}">
					<tr>
						<td>${product.productId}</td>
						<td>${product.productName}</td>
						<td>${product.price}</td>
						<td width="130"><img src="../img/${product.image}" class="admin-img"></td>
						<td>${product.categoryId}</td>
					</tr>
				</c:forEach>
			</table>
			<form action="" method="post">
				<input type="submit" value="Back" name="button" formaction="../views/newadmin-menu.jsp" class="admin-button">
			</form>
		</div>
	</div>
</main>



<%@include file="footer.html"%>