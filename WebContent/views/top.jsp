<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="red.jsp"%>


<div id="splash">
	<div id="splash_logo">
		<p class="load">santa monica</p>

	</div>
</div>

<div class="splashbg"></div><!---画面遷移用-->


<div id="container">

	<header>
		<h1>Santa Monica</h1>
		<h3>
			<span class="margin">beach goods</span>
		</h3>
	</header>

	<main>
		<br> <br> <br>
		<div id="wrapper">
			<div class="contents">
				<table>
					<tr>
						<td><img src="../img/1533542917.png" alt="tree" class="tree"></td>
						<td class="welcome">WELCOME<br> <br> <br>WELCOME<br>
							<br> <br>WELCOME
						</td>
						<td><img src="../img/1533542917.png" alt="tree" class="tree"></td>
					</tr>
				</table>
			</div>

			<div class="right-colum">
				<label for="menu_bar01">MENU</label> <input type="checkbox"
					id="menu_bar01">
				<ul id="links01">
					<li><a href="top.jsp">TOP</a></li>
					<li><a href="not-login.jsp">LOGIN</a></li>
					<li><a href="login.jsp">PRODUCTS</a></li>
					<li><a href="login.jsp">LOGOUT</a></li>
				</ul>
				<p class="msg">
					I hope<br>you can find something <br>you like...
				</p>
			</div>
		</div>
	</main>



	<br> <br> <br>
	<footer>
		<p class="footer">Copyright 2021 Natsuka Kanamori</p>
	</footer>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script
	src="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/4-1-4/js/4-1-4.js"></script>
<script src="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/4-2-7/js/4-2-7.js"></script>



<%@include file="footer.html"%>