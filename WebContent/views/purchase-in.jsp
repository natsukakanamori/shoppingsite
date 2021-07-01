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
			<p class="cart-size">${cart.size()}種類の商品があります.</p>
			<hr>

			<table class="sorttbl">
				<c:forEach var="p" items="${cart}">
					<tr>
						<td><p class="td-design">${p.product.productId}</p></td>
						<td><img src="img/${p.product.image}" alt="product"
							class="product-purchase"></td>
						<td><p class="td-design">${p.product.productName}</p></td>
						<td><p class="td-design">${p.product.price}yen</p></td>
						<td width="60"><p class="td-design">${p.count}個</p></td>
						<td><p class="td-design">
								<a href="CartRemove.action?id=${p.product.productId}">Delete</a>
							</p></td>
						<td width="180" class="subtotal-design">小計:<p class="subTotal">${p.product.price * p.count}
							yen</p></td>
					</tr>
				</c:forEach>
			</table>

			<br>
			<div class="cart-size">
				合計:<p id="total"></p>

			</div>
			<br>


			<form action="Purchase.action" method="post" class="button-form">
				${msg}
				<table class="info-form">
					<tr>
						<td class="cart-size">お名前</td>
						<td><input type="text" name="userName"></td>
					</tr>

					<tr>
						<td class="cart-size">住所</td>
						<td><input type="text" name="address"></td>
					</tr>
				</table>
				<br>
				<p>
					<input type="submit" value="購入を確定" name="button"
						class="search-button"
						onclick="return confirm('商品を購入します.よろしいですか？');"> <input
						type="submit" value="買い物を続ける" name="button" class="search-button">
				</p>

			</form>

		</div>

		<div class="right-colum">
			<label for="menu_bar01">MENU</label> <input type="checkbox"
				id="menu_bar01">
			<ul id="links01">
				<li><a href="views/new-top.jsp">TOP</a></li>
				<li><a href="views/login.jsp">LOGIN</a></li>
				<li><a href="views/productList.jsp">PRODUCTS</a></li>
				<li><a href="views/logout.jsp">LOGOUT</a></li>
			</ul>
			<p class="msg">
				I hope<br>you can find something <br>you like...
			</p>
		</div>
	</div>
</main>

<script type="text/javascript">
	function submitbtn() {
		if (confirm('商品を購入します.よろしいですか?')) {
			alert('OK');
		} else {
			alert('CANCEL');
		}
	}

	let subTotal = document.getElementsByClassName("subTotal");
	let total = 0;

	for (let i = 0; i < subTotal.length; i++){
		console.log(subTotal[i].textContent);
		total = total + parseInt(subTotal[i].textContent);
	}
	document.getElementById("total").textContent = total;
</script>



<%@include file="footer.html"%>