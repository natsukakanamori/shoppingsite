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
<br>
<br>
<main>
	<div id="wrapper">
		<div class="contents">
			<c:choose>
				<c:when test="${cart.size()>0}">
					<p>${cart.size()}種類の商品があります.</p>
					<hr>
				</c:when>
				<c:otherwise>
					<p>カートに商品がありません.</p>
				</c:otherwise>
			</c:choose>

			<table>
				<c:forEach var="p" items="${cart}">
					<tr>
						<td>${p.product.productId}</td>
						<td><img src="${p.product.image}" alt="product"></td>
						<td>${p.product.productName}</td>
						<td>${p.product.price}yen</td>
						<td>${p.count}個</td>
						<td><a href="CartRemove.action?id=${p.product.productId}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
			<form action="Preview.action" method="post">
				<input type="submit" value="購入する" name="button">
			</form>
		</div>

		<div class="right-colum">
			<label for="menu_bar01">MENU</label> <input type="checkbox"
				id="menu_bar01">
			<ul id="links01">
				<li><a href="new-top.jsp">TOP</a></li>
				<li><a href="login.jsp">LOGIN</a></li>
				<li><a href="productList.jsp">PRODUCTS</a></li>
				<li><a href="logout.jsp">LOGOUT</a></li>
			</ul>
			<p class="msg">
				I hope<br>you can find something <br>you like...
			</p>
		</div>
	</div>
</main>

<%@include file="footer.html"%>