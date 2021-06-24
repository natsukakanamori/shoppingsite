<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="black.jsp"%>


<br><br><br><br><br><br><br><br><br>
<main>
	<div id="wrapper">
		<div class="contents">
		<br><br>
			<p class="large-letters">ADMINISTRATOR SCREEN</p>
			<p class="small-letters"><span class="margin">delete existing products</span></p>
		</div>

		<div class="menu">
		<br>
		${msg}
			<form action="../jp.co.aforce.servlets/delete" method="post">
				<p class="product-info">
					<b>Product Id</b> <input type="text" name="productId" value="${product.productId}" class="admin-form"> <input
						type="submit" value="View" name="button" class="admin-button">
				</p>

				<table>
					<tr>
						<th class="product-info">Product Name</th>
						<td class="admin-form"><input type="text" name="productName"
							value="${product.productName}" disabled></td>
					</tr>

					<tr>
						<th class="product-info">Price</th>
						<td class="admin-form"><input type="text" name="price" value="${product.price}" disabled></td>
					</tr>

					<tr>
						<th class="product-info">Image</th>
						<td class="admin-form"><input type="text" name="image" value="${product.image}" disabled></td>
					</tr>

					<tr>
						<th class="product-info">Category Id</th>
						<td class="admin-form"><input type="text" name="categoryId"
							value="${product.categoryId}" disabled></td>
					</tr>

				</table>

				<p>
					<input type="submit" value="Delete" name="button" formaction="delete-confirm.jsp" class="admin-button"> <input
						type="submit" value="Back" name="button" formaction="admin-menu.jsp" class="admin-button">
				</p>

			</form>
			<br>
		</div>
	</div>
</main>



<%@include file="footer.html"%>