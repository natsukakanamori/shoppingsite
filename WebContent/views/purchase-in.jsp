<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="blue.jsp"%>

<p>${cart.size()}種類の商品があります.</p>
<hr>

<table>
	<c:forEach var="p" items="${cart}">
		<tr>
			<td>${p.product.productId}</td>
			<td><img src="${p.product.image}" alt="product"></td>
			<td>${p.product.productName}</td>
			<td>${p.product.price}yen</td>
			<td>${p.count}個</td>
		</tr>
	</c:forEach>
</table>
<hr>

<form action="../Purchase.action" method="post">
	${msg}
	<p>お名前<input type="text" name="username"></p>
	<p>住所<input type="text" name="address"></p>
	<p><input type="submit" value="購入を確定"></p>
</form>

<%@include file="footer.html"%>