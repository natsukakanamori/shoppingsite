<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="black.jsp"%>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<main>
	<div id="wrapper">
		<div class="contents">
			<br>
			<br>
			<p class="large-letters">ADMINISTRATOR SCREEN</p>
			<p class="small-letters">
				<span class="margin">Regist new products</span>
			</p>
		</div>

		<div class="menu">
			<br>
			<br> ${msg}
			<form action="../jp.co.aforce.servlets/regist" method="post">
				<table class="product-table">
					<tr>
						<th class="product-info">Product Name</th>
						<td class="admin-form"><input type="text" name="productName"></td>
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
					<input type="submit" value="REGIST" name="button"
						onclick="return confirm('商品を登録します.よろしいですか？');"
						class="admin-button"> <input type="submit" value="BACK"
						name="button" class="admin-button">
				</p>

			</form>
			<br>
		</div>
	</div>
</main>

<script type="text/javascript">
	function submitbtn() {
		if (confirm('商品を登録します.よろしいですか?')) {
			alert('OK');
		} else {
			alert('CANCEL');
		}
	}
</script>

<%@include file="footer.html"%>