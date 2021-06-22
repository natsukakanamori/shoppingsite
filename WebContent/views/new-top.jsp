<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="red.jsp"%>


<header>
	<h1>Santa Monica</h1>
	<h3><span class="margin">beach goods</span></h3>
	<h4 class="message">${message}様,   WELCOME！！</h4>
</header>

<main>
<br><br><br>
<div id="wrapper">
	<div class="contents">
		<table>
			<tr>
				<td ><img src="../img/1533542917.png" alt="tree" class="tree"></td>
				<td class="welcome">WELCOME<br><br><br>WELCOME<br><br><br>WELCOME</td>
				<td ><img src="../img/1533542917.png" alt="tree" class="tree"></td>
			</tr>
		</table>
	</div>

	<div class="right-colum">
	<label for="menu_bar01">MENU</label>
	<input type="checkbox"  id="menu_bar01">
	<ul id="links01">
		<li><a href="../views/new-top.jsp">TOP</a></li>
		<li><a href="../views/login.jsp">LOGIN</a></li>
		<li><a href="../views/productList.jsp">PRODUCTS</a></li>
		<li><a href="../views/logout.jsp">LOGOUT</a></li>
	</ul>
	<p class="msg">I hope<br>you can find something <br>you like...</p>
	</div>
</div>


</main>

<br>
<footer>
	<p class="footer">Copyright 2021 Natsuka Kanamori</p>
</footer>


<%@include file="footer.html"%>