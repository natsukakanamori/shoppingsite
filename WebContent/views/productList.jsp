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
			<input type="text" name="keyword" placeholder="Please enter keywords." class="search-form"> <input type="submit"
				name="seach-button" value="search" class="search-button">
		</form>
	</div>
	<br>
	<div id="wrapper">
		<div class="contents">
			<table class="sorttbl" id="myTable">
				<tr>
					<th>product <i class="fa fa-sort"></i>
					</th>
					<th onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(2)')">name∇
						<i class="fa fa-sort"></i>
					</th>
					<th onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(3)')">price∇
						<i class="fa fa-sort"></i>
					</th>
					<th></th>
				</tr>

				<tr class="item">
					<td><a href="jacquard-towel.jsp"><img src="../img/beautyfive_sr4548732897964.jpg"
						alt="product1" class="product"></a></td>
					<td class="lettering">jacquard towel</td>
					<td class="lettering">3000yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A200305075522">ADD TO CART</a></td>
				</tr>

				<tr class="item">
					<td><a href="american-cap.jsp"><img src="../img/1b17749yh0002la97-1.jpg" alt="product2"
						class="product"></a></td>
					<td class="lettering" width="160">american cap</td>
					<td class="lettering" width="160">1300yen</td>
					<td class="lettering" width="160"><a href="../CartAdd.action?id=A200383225522">ADD TO CART</a></td>
				</tr>
				<tr class="item">
					<td><a href="navycap.jsp"><img src="../img/cliffedge_20020804_2.jpg" alt="product3"
						class="product"></a></td>
					<td class="lettering">navy cap</td>
					<td class="lettering">1200yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A220394222522">ADD TO CART</a></td>
				</tr>

				<tr class="item">
					<td><a href="simplesandal.jsp"><img src="../img/feature_sandals07.jpg" alt="product4"
						class="product"></a></td>
					<td class="lettering">simple sandal</td>
					<td class="lettering">1800yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A220456782522">ADD TO CART</a></td>
				</tr>

				<tr class="item">
					<td><a href="parmtree.jsp"><img src="../img/feature_sandals10.jpg"
						alt="product5" class="product"></a></td>
					<td class="lettering">parmtree sandal</td>
					<td class="lettering">1700yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A220456854322">ADD TO CART</a></td>
				</tr>

				<tr class="item">
					<td><a href="blacksunglass.jsp"><img src="../img/gifttime_ov1197st-5253r5.jpg"
						alt="product5" class="product"></a></td>
					<td class="lettering">black sunglass</td>
					<td class="lettering">2100yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A262458954322">ADD TO CART</a></td>
				</tr>

				<tr class="item">
					<td><a href="brownsunglass.jsp"><img src="../img/gifttime_ov5184s-143639.jpg" alt="product6"
						class="product"></a></td>
					<td class="lettering">brown sunglass</td>
					<td class="lettering">2500yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A983458129322">ADD TO CART</a></td>
				</tr>

				<tr class="item">
					<td><a href="logotowel.jsp"><img src="../img/144445393_o2.jpg" alt="product6"
						class="product"></a></td>
					<td class="lettering">logo towel</td>
					<td class="lettering">2800yen</td>
					<td class="lettering"><a href="../CartAdd.action?id=A983458129920">ADD TO CART</a></td>
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

<footer>
	<p class="footer">Copyright 2021 Natsuka Kanamori</p>
</footer>

<script src="https://www.w3schools.com/lib/w3.js"></script>


<%@include file="footer.html"%>