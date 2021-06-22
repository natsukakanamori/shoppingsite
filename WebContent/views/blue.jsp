<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SANTA MONICA</title>
<style>
body {
	background-color: white;
}

h1, .right-colum {
	color: #4682B4;
	font-family: 'Staatliches', cursive;
}

h1 {
	font-size: 400%;
	margin-bottom: 1px;
}

h3 {
	font-family: 'Oswald', sans-serif;
	color: #4682B4;
	margin-top: 1px;
	font-size: 160%;
}

.margin {
	margin-left: 220px;
}

.product {
	width: 20%;
	border: 2px solid #d3d3d3;
}

.searchbox {
	text-align: right;
}

.search-form {
	width: 250px;
	height: 35px;
}

.search-button {
	font-family: 'Francois One', sans-serif;
	display: inline-block;
	border: none; /* 枠線を消す */
	font-size: 13pt; /* 文字サイズ */
	text-align: center; /* 文字位置   */
	cursor: pointer; /* カーソル   */
	padding: 12px 16px; /* 余白       */
	background: #4682B4; /* 背景色     */
	color: white; /* 文字色     */
	line-height: 1em; /* 1行の高さ  */
	opacity: 1; /* 透明度     */
	transition: .3s; /* なめらか変化 */
	box-shadow: 1px 1px #f0e68c; /* 影の設定 */
}

.search-button:hover {
	box-shadow: none; /* カーソル時の影消去 */
	opacity: 0.8; /* カーソル時透明度 */
}

/*--- table css ---*/
.sorttbl {
	border-collapse: collapse;
	border-spacing: 0;
	width: 75%;
	display: table;
	position: absolute;
	top: 260px;
	left: 100px;
}

.sorttbl tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
	border-bottom: 3px solid #ddd;
	cursor: pointer;
}

.sorttbl th:first-child, .sorttbl td:first-child {
	padding-left: 16px;
}

.sorttbl td, .sorttbl th {
	padding: 8px 8px;
	display: table-cell;
	text-align: left;
	vertical-align: top;
	font-family: 'Barlow', sans-serif;
}

.sorttbl th {
	color: #fff !important;
	background-color: #4682B4;
}

.lettering {
	color: #4682B4;
	font-family: 'Barlow', sans-serif;
	font-size: 180%;
}

.product-details {
	margin-right: auto;
	margin-left: auto;
}

.detail-img {
	width: 80%;
	border: 2px solid #d3d3d3;
}

.product-detail {
	max-width: 640px;
	margin-right: auto;
	margin-left: auto;
	box-shadow: 0 0 10px #dcdcdc;
	margin-top: 40px;
	padding-top: 10px;
	padding-right: 20px;
	padding-bottom: 10px;
	padding-left: 20px;
	background-color: #dcdcdc;
}

.large-letters {
	font-size: 200%;
	color: #4682B4;
	font-family: 'Barlow', sans-serif;
	text-align: center;
}

.small-letters {
	font-size: 150%;
	color: #4682B4;
	font-family: 'Barlow', sans-serif;
	text-align: center;
}

.product-description {
	font-size: 130%;
	color: #4682B4;
	font-family: 'Barlow', sans-serif;
}

.product-description2 {
	font-size: 110%;
	color: #4682B4;
	font-family: 'Barlow', sans-serif;
}

hr {
	border: none;
	border-top: dashed 1px #4682B4;
	height: 1px;
	width: 450px;
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
	color: #4682B4;
	line-height: 1;
}

.right-colum label {
	display: block;
	position: relative;
	margin: 0 0 2px 0;
	padding: 12px;
	line-height: 1;
	color: white;
	background: #4682B4;
	cursor: pointer;
}

.right-colum input {
	display: none;
}

.right-colum ul {
	margin: 0;
	padding: 0;
	background: white;
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
	background-color: #4682B4;
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
	color: white;
	text-align: right;
	font-family: 'Francois One', sans-serif;
}

.footer {
	color: #4682B4;
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
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:wght@300&display=swap"
	rel="stylesheet">
</head>
<body>