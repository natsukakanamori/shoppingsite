<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="blue.jsp"%>


<header>
	<h1>Santa Monica</h1>
	<h3>
		<span class="margin">beach goods</span>
	</h3>
</header>

<main>
	<div class="searchbox">
		<form action="../jp.co.aforce.servlets/search" method="post">
			<input type="text" name="keyword"
				placeholder="Please enter keywords." class="search-form"> <input
				type="submit" name="seach-button" value="search"
				class="search-button">
		</form>
	</div>
	<br>
	<div id="wrapper">
		<div class="contents">
			<table class="sorttbl" id="myTable">
				<tr>
					<th>product <i class="fa fa-sort"></i>
					</th>
					<th onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(2)')">name▼
						<i class="fa fa-sort"></i>
					</th>
					<th onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(3)')">price▼
						<i class="fa fa-sort"></i>
					</th>
					<th></th>
				</tr>

				<tr class="item">
					<td><img src="../img/${list[0].image}" width="30%" class="product"></td>
					<td class="lettering" width="160">${list[0].productName}</td>
					<td class="lettering" width="160">${list[0].price}yen</td>
				</tr>

				<tr class="item">
					<td><img src="../img/${list[1].image}" width="30%" class="product"></td>
					<td class="lettering" width="160">${list[1].productName}</td>
					<td class="lettering" width="160">${list[1].price}yen</td>
				</tr>
			</table>
		</div>

		<div class="right-colum">
			<label for="menu_bar01">MENU</label> <input type="checkbox"
				id="menu_bar01">
			<ul id="links01">
				<li><a href="../views/new-top.jsp">TOP</a></li>
				<li><a href="../views/login.jsp">LOGIN</a></li>
				<li><a href="../views/productList.jsp">PRODUCTS</a></li>
				<li><a href="../views/logout.jsp">LOGOUT</a></li>
			</ul>
			<p class="msg">
				I hope<br>you can find something <br>you like...
			</p>
		</div>
	</div>
</main>

<script src="https://www.w3schools.com/lib/w3.js"></script>

<%@include file="footer.html"%>