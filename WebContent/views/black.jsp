<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SANTA MONICA</title>
	<style>
		body{
			background-color:#666666;
		}

		#wrapper {
			width: 100%;
			margin: 0 auto;
			display: flex;
			flex-wrap: wrap;
		}

		.contents {
			width: 60%;


		}

		.large-letters{
			font-family: 'Staatliches', cursive;
			color: white;
			font-size:500%;
			margin-bottom:1px;
		}

		.small-letters{
			font-family: 'Francois One', sans-serif;
			color: white;
			margin-top:1px;
			font-size:160%;
		}

		.margin{
			margin-left:400px;
		}

		.attention{
			font-family: 'Noto Sans JP', sans-serif;
			font-size:130%;
		}

		.product-info{
			font-family: 'Julius Sans One', sans-serif;
			color: #696969;
			font-size:130%;
		}

		.admin-form{
			width:250px;
			height:30px;
		}

		.admin-button{
			font-family: 'Julius Sans One', sans-serif;
			display: inline-block;
			border: none; /* 枠線を消す */
			font-size: 13pt; /* 文字サイズ */
			text-align: center; /* 文字位置   */
			cursor: pointer; /* カーソル   */
			padding: 12px 16px; /* 余白       */
			background: #696969; /* 背景色     */
			color: white; /* 文字色     */
			line-height: 1em; /* 1行の高さ  */
			opacity: 1; /* 透明度     */
			transition: .3s; /* なめらか変化 */
			box-shadow: 1px 1px #f0e68c; /* 影の設定 */
		}

		.admin-button:hover {
			box-shadow: none; /* カーソル時の影消去 */
			opacity: 0.8; /* カーソル時透明度 */
		}

		.admin-img{
			width:90%;
		}



		.right-colum {
			width: 40%;
		}


		.menu{
			text-align:center;
			background-color:white;
		}


		.menu-button {
			font-family: 'Julius Sans One', sans-serif;
			display: inline-block;
			border:2px solid #d3d3d3;
			font-size: 15pt; /* 文字サイズ */
			text-align: center; /* 文字位置   */
			cursor: pointer; /* カーソル   */
			padding: 12px 16px; /* 余白       */
			background: #f5f5f5; /* 背景色     */
			color: #696969; /* 文字色     */
			line-height: 1em; /* 1行の高さ  */
			opacity: 1; /* 透明度     */
			transition: .3s; /* なめらか変化 */
			box-shadow: 1px 1px #f0e68c; /* 影の設定 */
			width: 340px;
		    height: 80px;
		}

		.menu-button:hover {
			box-shadow: none; /* カーソル時の影消去 */
			opacity: 0.8; /* カーソル時透明度 */
		}
	</style>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap"
		rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Francois+One&display=swap"
		rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=M+PLUS+1p:wght@300&display=swap"
		rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100&display=swap" rel="stylesheet">
</head>
<body>
