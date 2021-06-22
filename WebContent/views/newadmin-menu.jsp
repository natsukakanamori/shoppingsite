<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="black.jsp"%>


<br><br><br><br><br><br><br><br><br><br><br>
<main>
	<div id="wrapper">
		<div class="contents">
			<p class="large-letters">ADMINISTRATOR SCREEN</p>
			<p class="small-letters"><span class="margin">regist,update,delete?</span></p>
		</div>


		<div class="menu">
		<br>
			<form action="" method="post">
				<p><input type="submit" value="Regist new products" formaction="../views/admin-regist.jsp" class="menu-button"></p>
				<p><input type="submit" value="Update existing products" formaction="../views/admin-update.jsp" class="menu-button"></p>
				<p><input type="submit" value="Delelte existing products" formaction="../views/admin-delete.jsp" class="menu-button"></p>
			</form>
		<br>
		</div>
	</div>
</main>



<%@include file="footer.html"%>


