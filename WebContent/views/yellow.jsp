<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SANTA MONICA</title>
	<style>
	body{
		background-color:#FFFFEE;
	}

	.contents {
	text-align: center;
	}

	h4, .right-colum {
	color: #f0e68c;
	font-family: 'Staatliches', cursive;
	}

	h1 {
		font-size: 400%;
		color:#8b4513;
		font-family: 'Staatliches', cursive;
		margin-bottom:1px;

	}

	h3{
		font-family: 'Oswald', sans-serif;
		color:#8b4513;
		margin-top:1px;
		font-size:160%;
	}

	.margin{
		margin-left:220px;
	}

	.loginout-this {
	font-size: 180%;
	font-family: 'Staatliches', cursive;
	position: relative;
	margin: 2em auto;
	padding: 20px 20px 20px 35px;
	width: 15%; /* ボックス幅 */
	background-color: #f0e68c; /* ボックス背景色 */
	color: #8b4513; /* 文章色 */
	border: 1px solid white; /* 枠線 */
	box-shadow: 2px 2px 2px white; /* 影の色 */
	}

	.loginout-this::before {
		position: absolute;
		content: '';
		top: 5px;
		left: 20px;
		height: 30px;
		border: 1.5px solid white; /* ホチキス色 */
		border-radius: 12px;
		box-shadow: 1px 1px 1px white;
		transform: rotate(45deg);
	}

	.idpass-form{
		height:25px;
	}

	.tree2a {
		position: absolute;
		top: 480px;
		left: 230px;
		width:17%;
	}

	.tree2b{
		position: absolute;
		top: 480px;
		left: 120px;
		width:17%;
	}

	.tree2c{
		position: absolute;
		top: 480px;
		left: 20px;
		width:17%;
	}

	.surf{
		position: absolute;
		top: 660px;
		left: 20px;
		width:8%;
	}

	.attention{
		font-family: 'Francois One', sans-serif;
		color: #8b4513;
		text-align: center;
		font-size:140%;
	}

	.result{
		font-family: 'Staatliches', cursive;
		text-align: center;
		font-size:700%;
		color: #8b4513;
	}

	.result-link{
		font-family: 'Staatliches', cursive;
		text-align: center;
		font-size:300%;
		color: #8b4513;
	}

	.loginout-button {
	font-family: 'Francois One', sans-serif;
	display: inline-block;
	border: none; /* 枠線を消す */
	font-size: 13pt; /* 文字サイズ */
	text-align: center; /* 文字位置   */
	cursor: pointer; /* カーソル   */
	padding: 12px 16px; /* 余白       */
	background: #f0e68c; /* 背景色     */
	color: #8b4513; /* 文字色     */
	line-height: 1em; /* 1行の高さ  */
	opacity: 1; /* 透明度     */
	transition: .3s; /* なめらか変化 */
	box-shadow: 1px 1px #f0e68c; /* 影の設定 */
	}

	.loginout-button:hover {
		box-shadow: none; /* カーソル時の影消去 */
		opacity: 0.8; /* カーソル時透明度 */
	}


	.right-colum {
		color: #f0e68c;
		font-family: 'Staatliches', cursive;
	}

	.right-colum {
		max-width: 360px;
		margin: 0 auto;
		padding: 0;
	}

	.right-colum a {
		display: block;
		padding: 10px;
		text-decoration: none;
		color: #f0e68c;
		line-height: 1;
	}

	.right-colum label {
		display: block;
		position: relative;
		margin: 0 0 2px 0;
		padding: 12px;
		line-height: 1;
		color: #8b4513;
		background: #f0e68c;
		cursor: pointer;
	}

	.right-colum input {
		display: none;
	}

	.right-colum ul {
		margin: 0;
		padding: 0;
		background: #8b4513;
		list-style: none;
	}

	.right-colum li {
		height: 0;
		overflow: hidden;
		-webkit-transition: all 0.5s;
		-moz-transition: all 0.5s;
		-ms-transition: all 0.5s;
		-o-transition: all 0.5s;
		transition: all 0.5s;
	}

	#menu_bar01:checked ~ #links01 li {
		height: 54px;
		opacity: 1;
	}

	.right-colum {
		text-align: center;
		background-color: #f0e68c;
	}

	#wrapper {
		width: 100%;
		margin: 0 auto;
		display: flex;
		flex-wrap: wrap;
	}

	.contents {
		width: 90%;
	}

	.right-colum {
		width: 10%;
		height: 580px;
	}

	.msg {
		color: #8b4513;
		text-align: right;
		font-family: 'Francois One', sans-serif;
	}

	.footer {
		color: #8b4513;
		font-family: 'Francois One', sans-serif;
		text-align: right;
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
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
</head>
<body>