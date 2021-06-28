<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="blue.jsp"%>

<% String userName = request.getParameter("userName"); %>
<% String address = request.getParameter("address"); %>


<p>商品を購入します.よろしいですか?</p>
<form action="../Purchase.action" method="post">
				<input type="hidden" value="<%=userName%>" name="userName">
				<input type="hidden" value="<%=address%>" name="address">
				<input type="submit" value="はい" name="button" >
				<input type="submit" value="いいえ" name="button" >
			</form>

<%@include file="footer.html"%>
