<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SANTA MONICA</title>
	<style>
/*========= LoadingのためのCSS ===============*/

/* Loading背景画面設定　*/
#splash {
    /*fixedで全面に固定*/
  position: fixed;
  width: 100%;
  height: 100%;
  z-index: 999;
  background:white;
  text-align:center;
  color:black;

}

.load{
	font-size:300%;
	font-family: 'Nothing You Could Do', cursive;
}

/* Loading画像中央配置　*/
#splash_logo {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

/* Loading アイコンの大きさ設定　*/
#splash_logo img {
  width:200px;
}

/* fadeUpをするアイコンの動き */

.fadeUp{
animation-name: fadeUpAnime;
animation-duration:0.5s;
animation-fill-mode:forwards;
opacity: 0;
}

@keyframes fadeUpAnime{
  from {
    opacity: 0;
  transform: translateY(100px);
  }

  to {
    opacity: 1;
  transform: translateY(0);
  }
}





/*========= 画面遷移のためのCSS ===============*/

/*画面遷移アニメーション*/
.splashbg{
    display: none;
}

/*bodyにappearクラスがついたら出現*/
body.appear .splashbg{
 display:block;
  animation-name:PageAnime;
  animation-duration:1.5s;
  animation-timing-function:ease-in-out;
  animation-fill-mode:forwards;
    content: "";
    position:fixed;
  z-index: 999;
    width: 50%;
    height: 100vh;
    top: 0;
  left: 0;
    transform: translateX(-300%) skewX(-45deg);
    background-color: #ffe4e1;/*伸びる背景色の設定*/
}

@keyframes PageAnime{
  0% {
    transform-origin:left;
    transform:translateX(-300%) skewX(-45deg);
  }
  100% {
    transform-origin:left;
    transform:translateX(500%) skewX(-45deg);
  }
}

/*画面遷移の後現れるコンテンツ設定*/
#container{
  opacity: 0;/*はじめは透過0に*/
}

/*bodyにappearクラスがついたら出現*/
body.appear #container{
  animation-name:PageAnimeAppear;
  animation-duration:1.2s;
  animation-delay: 0.6s;
  animation-fill-mode:forwards;
  opacity: 0;
}

@keyframes PageAnimeAppear{
  0% {
  opacity: 0;
  }
  100% {
  opacity: 1;
}
}

	/* 点滅 */
	.welcome{
		-webkit-animation:blink 0s  infinite alternate;
	    -moz-animation:blink 0s  infinite alternate;
	    animation:blink 1.0s  infinite alternate;
	}
	@-webkit-keyframes blink{
	    0% {opacity:0;}
	    100% {opacity:1;}
	}
	@-moz-keyframes blink{
	    0% {opacity:0;}
	    100% {opacity:1;}
	}
	@keyframes blink{
	    0% {opacity:0;}
	    100% {opacity:1;}
	}

	h1,h4,.right-colum{
		color:red;
		font-family: 'Staatliches', cursive;
	}

	h3{
		font-family: 'Oswald', sans-serif;
		color:red;
		margin-top:1px;
		font-size:160%;
	}

	.margin{
		margin-left:220px;
	}


	h1 {
		font-size:400%;
		margin-bottom:1px;
	}

	.message{
		text-align:right;
	}
	table {
		margin-left: auto;
	    margin-right: auto;
	}

	.tree {
		max-width:100%;
		text-align:right;
	}

	.welcome {
		font-size:280%;
		text-align:right;
		font-family: 'Dela Gothic One', cursive;
		color:red;
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
		color: red;
		line-height: 1;
	}
	.right-colum label {
		display: block;
		position: relative;
		margin: 0 0 2px 0;
		padding: 12px;
		line-height: 1;
		color: #ffffff;
		background: red;
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
		text-align:center;
		background-color:red;
	}

	#wrapper {
	  width:100%;
	  margin: 0 auto;
	  display: flex;
	  flex-wrap: wrap;
	}

	.contents {
	  width: 90%;
	}

	.right-colum {
	  width: 10%;
	  height:580px;
	}

	.msg {
		color:white;
		text-align:right;
		font-family: 'Francois One', sans-serif;
	}
	.footer {
		color:red;
		font-family: 'Francois One', sans-serif;
		text-align:right;
	}

	</style>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Francois+One&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nothing+You+Could+Do&display=swap" rel="stylesheet">
</head>
<body>

