<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="black.jsp"%>

<% String productId = request.getParameter("productId"); %>
<% String productName = request.getParameter("productName"); %>
<% int price = Integer.parseInt(request.getParameter("price")); %>
<% String image = request.getParameter("image"); %>
<% String categoryId = request.getParameter("categoryId"); %>

<br><br><br><br><br><br><br><br><br>
<main>
	<div id="wrapper">
		<div class="contents">
		<br><br>
			<p class="large-letters">ADMINISTRATOR SCREEN</p>
			<p class="small-letters"><span class="margin">Update existing products</span></p>
		</div>

		<div class="menu">
		<br><br>
			<p class="attention">商品を変更します.よろしいですか？</p>
			<form action="../jp.co.aforce.servlets/update" method="post">
				<input type="hidden" value="<%=productId%>" name="productId">
				<input type="hidden" value="<%=productName%>" name="productName">
				<input type="hidden" value="<%=price%>" name="price">
				<input type="hidden" value="<%=image%>" name="image">
				<input type="hidden" value="<%=categoryId%>" name="categoryId">
				<input type="submit" value="OK" name="button" class="admin-button">
				<input type="submit" value="CANCEL" name="button" class="admin-button">
			</form>
		</div>
	</div>
</main>



<%@include file="footer.html"%>