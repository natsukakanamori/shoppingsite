<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="yellow.jsp"%>

<header>
	<h1>Santa Monica</h1>
	<h3><span class="margin">beach goods</span></h3>
</header>

<main>
	<br>
	<br>
	<br>
	<div id="wrapper">
		<div class="contents">
			<img src="../img/f_tree_shadow262.png" alt="tree2a" class="tree2a">
			<img src="../img/f_tree_shadow272.png" alt="tree2b" class="tree2b">
			<img src="../img/f_tree_shadow262.png" alt="tree2c" class="tree2c">
			<img src="../img/1535002274.png" alt="surf" class="surf">



			<p class="loginout-this">Log in.</p>
			${members.msg}
			<form action="../jp.co.aforce.servlets/login" method="post">
				<p>
					<input type="text" name="id" placeholder="id"  value="${members.id}" class="idpass-form">
				</p>
				<br>
				<p>
					<input type="password" name="password" placeholder="password" class="idpass-form" value="${members.password}">
				</p>
				<br>
				<p>
					<input type="submit" value="login" class="loginout-button">
				</p>
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