<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<table class="product-details">
				<tr>
					<th><img src="../img/beautyfive_sr4548732897964.jpg"
						alt="product1" class="detail-img"></th>
					<td>
						<div class="product-detail">
							<p class="large-letters">jacquard towel__3000yen</p>
							<p class="small-letters">color : blue × brown</p>
						</div>
						<p class="product-description">使い方いろいろ</p>
						<hr>
						<p class="product-description2">アウトドアだけでなく、インテリアとしても使えます.</p>
						<a href="../CartAdd.action?id=A200305075522">ADD TO CART</a>

					</td>
				</tr>
			</table>
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