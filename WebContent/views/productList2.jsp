<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="blue.jsp"%>


<header>
	<h1>Santa Monica</h1>
	<h3><span class="margin">beach goods</span></h3>
</header>

<main>
	<br>
	<br>
	<form action="../jp.co.aforce.servlets/search" method="post">
		<input type="text" name="keyword">
		<input type="submit" name="seach-button" value="search">
	</form>
	<br>
	<div id="wrapper">
		<div class="contents">
			<div>
				<img src="${list[0].image}" width="30%">
				<p>${list[0].productName}<br>${list[0].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[1].image}" width="30%">
				<p>${list[1].productName}<br>${list[1].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[2].image}" width="30%">
				<p>${list[2].productName}<br>${list[2].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[3].image}" width="30%">
				<p>${list[3].productName}<br>${list[3].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[4].image}" width="30%">
				<p>${list[4].productName}<br>${list[4].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[5].image}" width="30%">
				<p>${list[5].productName}<br>${list[5].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[6].image}" width="30%">
				<p>${list[6].productName}<br>${list[6].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>

			<div>
				<img src="${list[7].image}" width="30%">
				<p>${list[7].productName}<br>${list[7].price}yen<br> <a
						href="">ADD CART</a>
				</p>
			</div>
		</div>



		<div class="right-colum">
			<label for="menu_bar01">MENU</label> <input type="checkbox"
				id="menu_bar01">
			<ul id="links01">
				<li><a href="../views/new-top.jsp">TOP</a></li>
				<li><a href="../views/login.jsp">LOGIN</a></li>
				<li><a href="../views/productList2.jsp">PRODUCTS</a></li>
				<li><a href="../views/logout.jsp">LOGOUT</a></li>
			</ul>
			<p class="msg">
				I hope<br>you can find something <br>you like...
			</p>
		</div>
	</div>


</main>

<footer>
	<p class="footer">Copyright 2021 Natsuka Kanamori</p>
</footer>


<%@include file="footer.html"%>