<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="blue.jsp"%>

<header>
	<h1>Santa Monica</h1>
	<h3>
		<span class="margin">beach goods</span>
	</h3>
</header>

<p class="thankyou">THANK YOU</p>
<p class="cart-size">購入手続きが完了しました.</p>

<table class="sorttbl">
	<c:forEach var="p" items="${cart}">
		<tr>
			<td><p class="td-design">${p.product.productId}</p></td>
			<td><img src="img/${p.product.image}" alt="product"
				class="product-purchase"></td>
			<td><p class="td-design">${p.product.productName}</p></td>
			<td><p class="td-design">${p.product.price}yen</p></td>
			<td width="60"><p class="td-design">${p.count}個</p></td>
			<td width="180"><p class="td-design">小計:${p.product.price * p.count}yen
				</p></td>
		</tr>
	</c:forEach>
</table>

<%session.removeAttribute("cart"); %>

<p class="cart-size"><a href="views/new-top.jsp">TOP PAGE</a></p>

<%@include file="footer.html"%>
