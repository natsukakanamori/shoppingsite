<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="black.jsp"%>


<br><br><br><br><br><br><br><br><br>
<main>
	<div id="wrapper">
		<div class="contents">
		<br><br>
			<p class="large-letters">ADMINISTRATOR SCREEN</p>
			<p class="small-letters"><span class="margin">Regist new products</span></p>
		</div>

		<div class="menu">
		<br><br>
			${msg}
			<form action="" method="post">
				<table>
					<tr>
						<th class="product-info">Product Name</th>
						<td class="admin-form"><input type="text" name="productName" ></td>
					</tr>

					<tr>
						<th class="product-info">Price</th>
						<td class="admin-form"><input type="text" name="price"></td>
					</tr>

					<tr>
						<th class="product-info">Image</th>
						<td class="admin-form"><input type="text" name="image"></td>
					</tr>

					<tr>
						<th class="product-info">Category Id</th>
						<td class="admin-form"><input type="text" name="categoryId"></td>
					</tr>

				</table>
				<br>
				<p>
					<input type="submit" value="Regist" name="button" class="admin-button" formaction="regist-confirm.jsp">
					<input
						type="submit" value="Back" name="button" class="admin-button" formaction="admin-menu.jsp">
				</p>

			</form>
		<br>
		</div>
	</div>
</main>



<%@include file="footer.html"%>