<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<title>Pick Up Your BookS</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="./css/iconfont.css">
		<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	</head>
	<style type="text/css" role="frame">
		body{
			background-color: #3f3f3f;
			min-width: 768px;
			padding-top: 66px;
		}
		nav{
			position: fixed;/*生成绝对定位*/
			top: 0;
			left: 0;
			z-index: 99;/*z-index值越高，就在越上层*/
			width: 100%;
			/* height: 65px; */
		}
		@font-face
		{
		font-family: lsFont;
		src: url('./fonts/lsfont.ttf');
		     /* url('Sansation_Light.eot'); /* IE9 */ */
		}
		a{
			text-decoration: none;
		}
		a:hover{
			text-decoration: none;
		}
		.night-mode{
			color: #c8c8c8;
		}
		.night-mode a,{
			color: #969696;
		}
		.night-mode p{
			color: #c8c8c8;
		}
		.night-mode i{
			color: #c8c8c8;
		}
		.width-limit{
			min-width: 768px;
			max-width: 1600px;
			height: 64px;
			margin: 0 auto;
		}
		.navbar-header{
			height: 65px;
		}
		.navbar-header a{
			padding-top: 10px;
			padding-bottom: 0;
			height: 100%;
		}
		.navbar-header a:link{
			color: #a3cf62;
		}
		.navbar-header a:hover{
			color: #a3cf62;
		}
		.navbar-header a:active{
			color: #a3cf62;
		}
		.navbar-header a:visited{
			color: #a3cf62;
		}
		.navbar-brand{
			display: inline-block;
			height: 62px;
		}
		.navbar-brand>img{
			display: inline-block;
		}
		.logo-top{
			height: 45px;
		}
		.logo-text{
			font-family: lsfont;
			font-weight: bolder;
			font-size: 40px;
			vertical-align: middle;
			line-height: 30px;
			display: inline-block;
			margin-left: 5px;
		}
		.navbar-customs {
			background-color: #3f3f3f;
			border-color: #2f2f2f;
		}
		.navbar-nav>li{
			height: 64px;
		}
		.navbar-nav>li>a{
			line-height: 30px;
			color: #c8c8c8;
			height: 64px;
			font-size: 17px;
			font-weight: bold;
		    padding-top: 15px;
    		padding-bottom: 15px;
		}
		.navbar-nav>li>a:hover{
			background-color: #2f2f2f;
		}
		.navbar-nav>li>a:visited{
			background-color: #2f2f2f;
		}
		.navbar-bar .input-group{
			margin-top: auto;
			width: 100%;
		}
		.navbar-bar .input-group-btn{
			position: relative;
			z-index: 99;
			border: none;
		}
		.navbar-bar .navbar-form{
			margin-top: 13px;
		}
		.navbar-bar .input-group-btn:last-child>.btn{
			margin-left: -40px;
		}
		.search-btn{
			position: relative;
			border: none;
			background: #4f4f4f;
			color: #c8c8c8;
		}
		.navbar-bar .input-group .form-control:first-child{
			border-radius: 8px;
		}
		.btn:focus,
		.btn:active:focus,
		.btn.active:focus,
		.btn.focus,
		.btn:active.focus,
		.btn.active.focus {
		    outline: none;
		}
		.btn-custom{
			border-radius: 20px;
			width: 80px;
		}

		.navbar-bar .btn-custom:hover{
			color: #bed742;
			border-color: #bed742;
			border-radius: 20px;
			background-color: rgba(190,215,66,.05);
		}
		.navbar-rightpart .btn-sign-up{
			font-size: 17px;
			width: 80px;
			height: 38px;
			line-height: 26px;
			margin-top: -4px;
			color: #a3cf62;
			border: 1px solid rgba(163,207,98,.7);
			background-color: transparent;
			font-weight: bold;
			transition: background-color 0.2s,border-color 0.2s,color 0.0s;
		 	-webkit-transition: background-color 0.2s,border-color 0.2s,color 0.2s;
		}
		.navbar-rightpart .btn-sign-up:hover{
			color: #bed742;
		    border-color: #bed742;
		    background-color: rgba(190,215,66,.05);
		}
		.navbar-rightpart .btn-write{
			width: 100px;
			height: 40px;
			line-height: 28px;
			border-radius: 20px;
			margin-top: -5px;
			font-size: 17px;
			color: #fff;
			background-color: #a3cf62;
			transition: background-color 0.2s;
		 	-webkit-transition: background-color 0.2s;
		}
		.navbar-rightpart .btn-write:hover{
    		background-color: #bed742;
		}
		.navbar-rightpart .nav li {
			display: inline;
			line-height: 40px;
			list-style-type:none;
		}
		.navbar-rightpart .navbar-nav>li {
			float: left;
		}
		.navbar-header .navbar-toggle{
			float: left;
			padding: 11px 10px;
			margin-top: 9px;
			background-color: transparent;
			background-image: none;
			border: 1px solid  transparent;
			border-color: #2f2f2f;
			border-radius: 4px;
		}
		.navbar-nav{
			margin: 0;
		}
		.navbar-bar .navbar-collapse{
			width: auto;
			background-color: #3f3f3f;
			border-bottom: 1px solid #2f2f2f;
		}
		.navbar-collapse.in {
		 	width: 100vw;
		 	height: auto;
		}
		.navbar-collapse ul .first a{
			color: #a3cf62;
		}
		.navbar-bar .after{
			display: none;
		}
		.navbar-toggle .icon-bar{
			background-color: #c8c8c8;
		}
		.navbar-form .search-form{
			border-color: #4f4f4f;
		    background: #4f4f4f;
		    color: #c8c8c8;
		}
		.navbar-nav>li>a>span{
			line-height: 35px;
		}
		@media screen and (max-width: 1000px) and (min-width: 768px)
			{ 
			a.after {
				display: block!important;
			}
			a.before{
				display: none!important;			
			}
			.nav>li>a{
				padding: 10px 10px;
				line-height: 45px;
			}
		}
		@media screen and (max-width: 894px) and (min-width: 768px)
		{
			.search-form{
				width: 140px!important;
			}
		}
		@media screen and (max-width: 768px)
		{
			.navbar-collapse.in{
				position: relative;
				z-index: 3;
			}
		}
		.navbar-bar ul li a{
			text-align: center;
		}
	</style>
	<style type="text/css" role="log-in-nav">
		.user-avatar{
			width: 80px;
		}
		.user-avatar .avatar{
			display: block;
			width: 45px;
			height: 45px;
			overflow: hidden;
			padding: 0;
			border-radius: 50%;
		}
		.user-avatar .avatar .caret{
			color: #c8c8c8;
			position: absolute;
			top: 50%;
			right: 10%;
		}
		.avatar>img{
			width: 45px;
			/* height: 45px; */
			height: auto;
		}
		.navbar-nav .dropdown-menu{
		    position: absolute;

		    top: 100%;
		    left: 0;
		    background-color: #3f3f3f;
		}
		.user-avatar .dropdown-menu{
			box-shadow: 0 5px 5px #4a4a4a;
			margin-top: 0px;
			border: 0;
		}
		.user-avatar .dropdown-menu a{
			padding: 10px 20px!important;
    		line-height: 30px!important;
		    color: #c8c8c8;
		    transition: all .1s ease;
		}
		.user-avatar .dropdown-menu a:hover{
			color: #c8c8c8;
			background-color: #2f2f2f;
		}
		.dropdown-menu .glyphicon{
			margin-top: -5px;
			margin-right: 15px;
		    font-size: 18px;
		    color: #a3cf62;
		    vertical-align: middle;
		}
		.navbar-collapse .navbar-nav .message .dropdown-toggle{
			padding: 15px 15px;
			text-align: center;
			line-height: 34px;
		}
		.navbar-collapse .navbar-nav .message .dropdown-toggle:hover{
			background-color: #2f2f2f;
		}
		.navbar-collapse .navbar-nav .message .dropdown-toggle a{
		    color: #c8c8c8;
		    /* height: 60px; */
		    font-size: 17px;
		    font-weight: bold;
		}
		.navbar-collapse .navbar-nav .message .dropdown-menu a{
			padding: 10px 20px;
		    line-height: 30px;
		    color: #c8c8c8;
		    transition: all .1s ease;
		    text-align: left;
		    /* background-color:  */
		}
		.navbar-collapse .navbar-nav .message .dropdown-menu a:hover{
			background-color: #2f2f2f;
		}
		.navbar-collapse .navbar-nav .message .dropdown-menu{
			/* position: relative; */
			box-shadow: 0 5px 5px #4a4a4a;
			margin-top: 0px;
			background-color: #3f3f3f;
			width: 100%;
		}
		.navbar-nav .message .dropdown-menu .iconfont{
	        margin-top: -5px;
		    margin-right: 15px;
		    font-size: 18px;
		    color: #a3cf62;
		    vertical-align: middle;
		}
		.message .icon-xinxiaoxi1{
		    color: #a3cf62;
			position: absolute;
			right: 5px;top: 3px;
			font-size: 10px;
		}
		.message .dropdown-menu>li{
			position: relative;
		}
		.message .dropdown-menu .icon-xinxiaoxi1{
			color: #a3cf62;
			position: absolute;
			right: 5px;top: 3px;
			font-size: 10px!important;
		}
		.message .hasmessage{
		}
		.theme .dropdown-toggle{
			color: #c8c8c8;
			display: inline-block;
		}
		.theme .dropdown-toggle span{
			vertical-align: middle;
			color: #c8c8c8;
		    font-size: 17px;
		}.nav .open>a, .nav .open>a:focus, .nav .open>a:hover{
			background-color: transparent;
		}
		@media screen and (max-width: 768px)
		{
			 .navbar-nav .message .dropdown-menu{
				position: relative!important;
				/* display: block;
			    float: none;
			    width: auto; */
			}
			.navbar-nav .message .dropdown-menu a{
				text-align: center!important;
			}
		}
	</style>
	<style type="text/css" role="carousel">
		#recommend-carousel{
			margin-top: 2px;
		}
		.carousel-inner>.item {
			/* margin-top: 2px; */
		  position: absolute;
		  width: 100%;
		  height: 100%;
		  display: block;
		  -webkit-transition: opacity 0.6s linear;
		  -moz-transition: opacity 0.6s linear;
		  -o-transition: opacity 0.6s linear;
		  transition: opacity 0.6s linear;
		  opacity:0;
		}
		.banner{
			height: 100%;
			width: auto;
		}
		.banner img{
			width: 100%;
			height: auto;
		}
		.carousel-inner>.fadein {
		  	opacity: 1;
		  	filter: opacity(100%);
		}
		.carousel-inner{
			height: 450px;
		}
		@media screen and (max-width: 1200px) and (min-width: 992px){
			.carousel-inner{
				height: 406px;
			}
		}
		@media screen and (max-width: 992px) {
			.carousel-inner{
				height: 311px;
			}
		}
		.carousel-control.left, .carousel-control.right {
			background-image: none;
		    background-color: rgba(0,0,0,.4);
		    height: 100px;
		    width: 60px;
		    top: 40%;
		}
		.carousel-control.right {
		    border-top-left-radius: 6px;
		    border-bottom-left-radius: 6px;
		}
		.carousel-control.left {
		    border-top-right-radius: 6px;
		    border-bottom-right-radius: 6px;
		}
		.carousel-control .glyphicon-chevron-right,.carousel-control .glyphicon-chevron-left{
		    top: 45%;
		}
		.carousel-inner{
			-webkit-transition: filter 0.3s;
			transition: filter 0.3s;
		}
		.carousel-inner:hover{
			-webkit-filter: brightness(93%);
			filter: brightness(93%);
		}
		#recommend-carousel:hover .carousel-control{
			color: #fff;
		    text-decoration: none;
		    filter: alpha(opacity=90);
		    outline: 0;
		    opacity: .9;
		}
	</style>
	<style type="text/css" role="main-content">
		.recommend-collection{
			margin-bottom: 20px;
		}
		.recommend-collection .collection{
			color: #c8c8c8;
			background-color: #4a4a4a;

		}
		.main-left{
			/* border: solid 2px; */
			/* height: 1200px; */
			margin-top: 35px;
			padding-right: 0;
		}
		.main-right{
			/* border: solid 2px; */
			/* height: 800px; */
			margin-top: 35px;
			padding: 0 25px 0 35px;
		}
		.collection{
		    display: inline-block;
		    margin: 0 20px 18px 0;
		    min-height: 32px;
		    background-color: #f7f7f7;
		    border: 1px solid #dcdcdc;
		    border-radius: 4px;
		    vertical-align: top;
		    overflow: hidden;
		    border-color: #2f2f2f;
		    -webkit-transition:all 0.3s ease;
		    transition:all 0.3s ease;
		}
		.collection:hover{
			background-color: #2f2f2f;
		}
		.collection img{
			height: 35px;
			width: auto;
		}
		.collection-name{
			display: inline-block;
		    padding: 0 13px 0 6px;
   	 		font-size: 14px;

		}
		.more-collection{
		    display: inline-block;
		    margin-top: 8px;
		    font-size: 14px;
		    color: #c8c8c8;
		    background-color: transparent;
		}
		.more-collection:hover{
			color: #a3cf62;
		}
		.split-line{
		    margin: -5px 0 15px;
    		border-top: 1px solid #f0f0f0;
		    border-color: #2f2f2f;
		}
	</style>
	<style type="text/css" role="list-note">
		.note-list{
			list-style-type: none;
			padding-left: 0;
		}
		.note-list .note-content{
			padding-right: 200px;
		}
		.note-item{

		}
		.note-list .note-item .note-img{
			display: inline-block;
		}
		.note-list>li{
			position: relative;
		    width: 100%;
		    margin: 0 15px 17px 0;
		    padding: 0 2px 17px 0;
		    border-bottom: 1px solid #2f2f2f;
		    word-wrap: break-word;
		}    
		.note-list>li>a{
		    position: absolute;
		    top: 50%;
		    margin-top: -75px;
		    right: 0;
		    width: 190px;
		    height: 135px;
		    overflow: hidden;
		}
		.note-list>li>a>img{
			width: 100%;
		    height: auto;
		    border-color: #2f2f2f;
		    border-radius: 4px;
		}
		.note-item .note-content .author{
			margin-bottom: 14px;
		}
		.note-item .note-content .author .avatar{
		    display: inline-block;
    		vertical-align: middle;
    		width: 35px;
		    height: auto;
		    cursor: pointer;
	        margin: 0 5px 0 0;
		}
		.note-item .note-content .author .avatar>img{
			border-radius: 50%;
			width: 100%;
			height: auto;

		}
		.note-item .note-content .author .name{
			display: inline-block;
			vertical-align: middle;
		}
		.note-item .note-content .author .name>a{
		    color: #c8c8c8;
		}
		.note-item .note-content .author .name>span{
	    	display: inline-block;
		    padding-left: 3px;
		    color: #969696;
		    font-size: 13px;
		}
		.note-content .title{
			margin: -7px 0 4px;
		    color: #c8c8c8;
		    display: block;
		    font-size: 18px;
		    font-weight: 700;
		    line-height: 1.5;
		}
		.note-content .title:visited{
			color: #969696;
		}
		.note-content .abstract{
		    margin: 0 0 8px;
		    font-size: 13px;
		    line-height: 24px;
	        color: #c8c8c8;
		}
		.note-content .meta>a{
			color: #969696;
		    margin-right: 10px;
		}
		.note-content .meta .dislike{
			float: right;
			color: #969696;
			font-size: 13px;
			cursor: pointer;
		}
		.note-content .meta .dislike>i{
			font-size: 13px;
		}
		.note-content .meta .collection-tag{
			margin-right: 10px;
		 	padding: 2px 6px;
		    color: #a3cf62;
		    border: 1px solid rgba(163,207,98,.7);
		    border-radius: 3px;
		    transition: .1s ease-in;
			-webkit-transition: .1s ease-in;
		}
		.note-content .meta .collection-tag:hover{
	 	    color: #ec6149!important;
		    background-color: rgba(236,97,73,.05);
		    border-color: #ec6149;
		}
		.note-content .meta{
		 	font-size: 13px;
		    font-weight: 400;
		    line-height: 20px;
		}
		.load-more{
		    width: 100%;
		    height: 45px;
		    margin: 30px auto 60px;
		    padding: 12px 15px;
		    text-align: center;
		    font-size: 15px;
		    border-radius: 20px;
		    color: #fff;
		    background-color: #a5a5a5;
		    display: block;
		}
		.load-more:visited{
			color: #fff;
			background-color: #a5a5a5;
		}
		.load-more:hover {
		    color: #fff;
		    background-color: #9b9b9b;
		}
	</style>
	<style type="text/css" role="main-right">
		.board{
			margin-top: -4px;
		    padding-bottom: 4px;
		    min-height: 228px;
		}
		.board>a>img{
			width: 100%;
		    min-height: 50px;
		    margin-bottom: 6px;
		    border-radius: 4px;
		}
		.daily{
			margin-bottom: 30px;
		}
		.daily .title>span,.author-recommend .title>span{
			font-size: 18px;
		}
		.daily .title>a{
			float: right;
			line-height: 26px;
		 	color: #969696;
		}
		.daily .title>a:hover{
			color: #c8c8c8;
		}
		.daily-content{
			overflow: hidden;
		    display: block;
			margin-top: 15px;
			height: 60px;
		}
		.daily-content>img{
		    float: left;
		    margin-right: 15px;
		    width: 70px;
		    height: auto;
		}
		.daily-content .note-title{
		    margin-top: 7px;
		    font-size: 14px;
		    overflow: hidden;
		    text-overflow: ellipsis;
		    display: -webkit-box;
		    -webkit-line-clamp: 3;
		    -webkit-box-orient: vertical;
		}
		.daily-content .note-title>p{
			/* padding-top: 7px; */
		}
		.author-recommend .title>a{
			float: right;
			line-height: 26px;
		 	color: #969696;
		 	transition: all .3s ease; 
		}
		.author-recommend .title>a:hover{
			color: #c8c8c8;
		}
		.author-list{
			list-style-type: none;
			padding-left: 0;
		}
		.author-list>li{
			margin-top: 10px;
		}
		.author-list img{
			border-radius: 50%;
			width: 100%;
			height: auto;
		}
		.author-list .author-item .avatar {
			display: inline-block;
		    float: left;
		    width: 50px;
		    height: 50px;
		    margin-right: 15px;
		    overflow: hidden;
		}
		.author-list .author-item .follow{
		    float: right;
			margin-top: 5px;
			padding: 0;
			font-size: 13px;
			color: #42c02e;
			cursor: pointer;
		}
		.author-list .author-item .following{
			color: #969696;
		}
		.author-list .author-item .name{
		    padding-top: 5px;
		    margin-right: 60px;
		    font-size: 16px;
		    display: block;
		    color: #c8c8c8;
		}
		.author-list .author-item p{
		    margin: 3px 0 10px;
		    font-size: 12px;
		    color: #969696;
		}
		.author-recommend .find-more{
    	    display: block;
		    padding: 7px 7px 7px 12px;
		    margin-top: 15px;
		    left: 0;
		    width: 100%;
		    font-size: 15px; 
		    border: 1px solid #dcdcdc;
		    color: #c8c8c8;
		    border-color: #2f2f2f;
		    background-color: #4a4a4a;		   
		    border-radius: 4px;
		    text-align: center;
		}
	</style>
	<style type="text/css" role="side-tool">
		.side-tool>ul{
			list-style-type: none;
			padding-left: 0;
		}
		.side-tool>ul>li{
			border: 1px solid rgba(181, 181, 181, 0.2);
			-webkit-transition: .1s ease-in;
			transition: .1s ease-in;
		}
		.side-tool>ul>li:hover{
			background-color: rgba(181, 181, 181, 0.3);
		}
		.icon-less{
			display: block;
			font-size: 22px;
			padding-top: 10px;
		}
		.function-btn{
		    width: 50px;
		    height: 50px;
		    text-align: center;
		    display: block;
			-webkit-transition: .1s ease-in;
			transition: .1s ease-in;
		}
		.side-tool {
			display: none;
		    position: fixed;
		    bottom: 50px;
		    right: 50px;
		    z-index: 6;
		}
	</style>
	<style type="text/css" role="footer">
		.footer{
            height: 180px;
            bottom: 0px;
            padding-right: 0;
        }
        .footer .link{
            text-align: center;
            padding-top: 5px;
            padding-bottom: 5px;
        }
        .footer a{
            padding: 5px;
            color: #969696;
            text-decoration-line: none;
            -webkit-transition: .3s ease;
            transition: .3s ease;
        }
        .footer a:hover{
        	color: #c8c8c8;
        }
        .footer-sns ul{
        	padding-left: 0;
     		list-style: none;
        }
        .footer-sns ul li{
        	display: inline-block;
        }
        .footer-sns ul li i{
        	padding: 0 10px;
        	font-size: 25px;
        }
	</style>
	<style type="text/css" role="modal-popup">
		.theme-btn{
			display: inline-block;
			position: relative;
		}
		.modal-popup{
			box-shadow: 0 5px 5px #4a4a4a;
		    position: absolute;
		    display: none;
		    right: -10px;
		    top: 66px;
		    z-index: 1;
		    padding: 20px 20px 20px 24px;
		    /* margin-left: -80px; */
		    min-width: 235px;
		    background-color: #3f3f3f;
		    border-radius: 4px;
		}
		.style-mode .popover-modal:after, .style-mode .popover-modal:before{
	    	position: absolute;
		    top: -10px;
		    left: 78%;
		    content: "";
		    display: inline-block;
		    border: 9px solid transparent;
		    border-top: none;
		}
		.style-mode .popover-modal:after, nav .style-mode .popover-modal:before{
		    position: absolute;
		    top: -10px;
		    left: 78%;
		    content: "";
		    display: inline-block;
		    border: 9px solid transparent;
		    border-top: none;
		    border-bottom-color: #3f3f3f;
	        top: -9px;
    		border-bottom: 9px solid #3f3f3f;
		}
		.style-mode .day-night-group{
			width: auto;
		    vertical-align: middle;
		    display: inline-block;
		    height: auto;
		}
		.style-mode .switch{
		    font-size: 0;
    		letter-spacing: -4px;
		}
		.style-mode .switch-btn{
		    width: 49%;
		    text-align: center;
		    font-size: 14px;
		    letter-spacing: 0!important;
		    color: #969696;
		    border: 1px solid #e5e5e5;
		    vertical-align: middle;
		    display: inline-block;
		}
		.style-mode .meta{
		    padding-left: 4px;
		    margin-right: 16px;
		    font-size: 14px;
		    color: #969696;
		    line-height: 40px;
		    vertical-align: middle;
		    display: inline-block;
		}
		.style-mode .switch-btn:first-child{
		    padding: 10px 13px 10px 17px;
		    border-radius: 20px 0 0 20px;
		    border-right: none;
		}
		.style-mode .switch-btn:last-child {
		    padding: 10px 17px 10px 13px;
		    border-radius: 0 20px 20px 0;
		    border-left: none;
		}
		.navbar-rightpart .nav li{
			line-height: 25px;
		}
		.style-mode .font-family-group {
		    margin-bottom: 10px;
		}
		.style-mode .glyphicon-adjust{
			font-size: 17px;
			display: inline-block;
			top: 3px;
			padding-right: 3px;
		}
		body.night-mode nav .style-mode .switch-btn.active {
		    color: #dcdcdc;
		    background-color: #3f7cc1;
		    box-shadow: inset 0 0 6px rgba(0,0,0,.2);
		}
	</style>
	<body class="night-mode"><!-- 夜间模式 -->
		<nav class="nav navbar-customs">
			<div class="width-limit">
				<div class="navbar-rightpart" style="float: right;">
						<ul class="nav navbar-nav">
							<li class="theme">
								<a class="theme-btn"><span class="glyphicon glyphicon-font"></span><span class="glyphicon glyphicon-adjust"></span></a>
								<div class="modal-popup">
									<div class="style-mode">
										<div class="popover-modal">
											<div class="meta"><i class="glyphicon glyphicon-adjust"></i><span>夜间模式</span></div>
											<div class="switch day-night-group"><a class="switch-btn active">开</a> <a class="switch-btn">关</a></div> <hr>
											<div class="switch font-family-group"><a class="switch-btn font-song">宋体</a> <a class="switch-btn font-hei active">黑体</a>
											</div>
											<div class="switch"><a class="switch-btn active">简</a> <a class="switch-btn">繁</a></div>
										</div>
									</div>
								</div>
							</li>
							<li class="user-avatar">
								<div class="dropdown" style="padding: 10px 15px;">
								    <a class="avatar dropdown-toggle" id="user-dropdownMenu" data-toggle="dropdown">
									<img src="./images/avatar/user.png" alt="">
									<span class="caret"></span>
									</a>
								    <ul class="dropdown-menu" role="menu" aria-labelledby="user-dropdownMenu">
								        <li role="presentation">
								            <a role="menuitem" href="#"><span class="glyphicon glyphicon-user"></span>我的主页</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" href="#"><span class="glyphicon glyphicon-bookmark"></span>收藏的文章</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" href="#"><span class="glyphicon glyphicon-heart"></span>喜欢的文章</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" href="#"><span class="glyphicon glyphicon-cog"></span>设置</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" href="#"><span class="glyphicon glyphicon-log-out"></span>退出</a>
								        </li>
								    </ul>
								</div>
							</li>
							<li><a href="#"><button class="btn btn-custom btn-write"><span class="glyphicon glyphicon-pencil"></span>我TM写</button></a></li>
						</ul>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="navbar-header">
							<a class="navbar-brand" href="./MainHome-login.html" style="float:left;">
								<img class="logo-top img-rounded" src="./images/tupian.png" alt=""><span class="logo-text">捡书</span>
							</a>
							<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#nav-navbar-collapse">
							<span class="sr-only">切换导航</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-bar">
							<div class="navbar-leftpart collapse navbar-collapse" id="nav-navbar-collapse">
								<ul class="nav navbar-nav">
									<li class="active first">
										<a class="before" href="#"><span class="iconfont icon-compass"></span>发现</a>
										<a class="after" href="#"><span class="iconfont icon-compass" ></span></a>
									</li>
									<li class="active">
										<a class="before" href="#"><span class="iconfont icon-follow01"></span>关注</a>
										<a class="after" href="#"><span class="iconfont icon-follow01" ></span></a>
									</li>
									<li class="active message ">
										<div class="dropdown hasmessage" >
											<div class="dropdown-toggle " id="message-dropdownMenu" data-toggle="dropdown">
												<a class="before"><span class="iconfont icon-remind"></span>消息</a>
												<a class="after"><span class="iconfont icon-remind"></span></a>
												<i class="iconfont icon-xinxiaoxi1"></i>	
											</div>	
										    <ul class="dropdown-menu" role="menu" aria-labelledby="message-dropdownMenu">
										        <li role="presentation">
									            	<a role="menuitem" href="./Notification.html"><span class="glyphicon glyphicon-comment"></span>我的评论<i class="iconfont icon-xinxiaoxi1"></i></a>
										        </li>
										        <li role="presentation">
										            <a role="menuitem" href="./notifi-chats.html"><span class="glyphicon glyphicon-envelope"></span>我的私信<i class="iconfont icon-xinxiaoxi1"></i></a>
										        </li>
										        <li role="presentation">
										            <a role="menuitem" href="./notifi-like.html"><span class="glyphicon glyphicon-heart-empty"></span>喜欢汗收藏<i class="iconfont icon-xinxiaoxi1"></i></a>
										        </li> 
										        <li role="presentation">
										            <a role="menuitem" href="./notifi-follow.html"><span class="iconfont icon-follow01"></span>我的关注<i class="iconfont icon-xinxiaoxi1"></i></a>
										        </li> 
										        <li role="presentation">
										            <a role="menuitem" href="./notifi-else.html"><span class="glyphicon glyphicon-list"></span>其他信息<i class="iconfont icon-xinxiaoxi1"></i></a>
										        </li>
										    </ul>
									    </div>
									</li>
									<li>
										<form class="navbar-form navbar-left" role="search">
											<div class="input-group">
												<input type="text" class="form-control search-form" placeholder="Search">
												<span class="input-group-btn">
													<button class="btn btn-default search-btn" type="button">
													<span class="glyphicon glyphicon-search"></span>
													</button>
												</span>
											</div>
										</form>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<div class="container main-content">
			<div class="row carousel-contanier">
				<div class="carousel slide" id="recommend-carousel">
			        <div class="carousel-inner">
				        <div class="item fadein active">
					        <div class="banner">
					        	<a href="#" style="">
					        		<img src="./images/1.jpg" alt="First slide">
						        </a>
					        </div>
				        </div>
				        <div class="item">
				            <div class="banner">
					        	<a href="#" style="">
					        		<img src="./images/2.jpg" alt="First slide">
						        </a>
					        </div>
				        </div>
				        <div class="item">
				            <div class="banner">
					        	<a href="#" style="">
					        		<img src="./images/3.jpg" alt="First slide">
						        </a>
					        </div>
				        </div>           
				    </div>
					<a href="#" class="carousel-control left">
                       <span class="glyphicon glyphicon-chevron-left"></span>
                       <span class="sr-only">&lsaquo;</span>
                   </a> 
                   <a href="#" class="carousel-control right">
                      <span class="glyphicon glyphicon-chevron-right"></span>
                       <span class="sr-only">&rsaquo;</span>
                   </a> 
				</div>
			</div>
			<div class="row main">
				<div class="main-left col-md-8 col-xs-8">
					<div class="recommend-collection">
						<a href="#" class="collection">
							<img src="./images/collection/EntertainmentGossip.png" alt="">
							<div class="collection-name">娱乐八卦</div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/Animate.jpg" alt="">
							<div class="collection-name">漫画&动画</div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/Books.jpg" alt="">
							<div class="collection-name">读书</div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/Prose.jpg" alt="">
							<div class="collection-name">散文</div>
						</a>	
						<a href="#" class="collection">
							<img src="./images/collection/Camera.png" alt="">
							<div class="collection-name">摄影</div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/Moyu.jpg" alt="">
							<div class="collection-name">上班<span style="text-decoration:line-through;">摸鱼</span></div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/Rua.jpg" alt="">
							<div class="collection-name">猛男</div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/RPG.jpg" alt="">
							<div class="collection-name">游戏<span style="text-decoration:line-through;">打Gay</span></div>
						</a>
						<a href="#" class="collection">
							<img src="./images/collection/Music.png" alt="">
							<div class="collection-name">音乐</div>
						</a>
						<a href="#" class="more-collection">
							更多热门专题  >
						</a>
					</div>
					<div class="split-line"></div>
					<div class="list-container">
						<ul class="note-list">
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/nzsm.jpg">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/xjp.jpg">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">净瓶先生</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">亚洲图片</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/nzsm.jpg">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/ws.gif">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">エロマンガ先生</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">日本激情</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/Gabe.gif">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/ha.jpg">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">净瓶先生</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">欧美激情</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/japali.gif">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/kaziya.jpg">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">Kaziya</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">国产激情</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/k-on.gif">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/kaziya.jpg">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">Kaziya</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">连载小说</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/remi.gif">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/kaziya.jpg">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">Kaziya</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">连载小说</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
							<li class="note-item">
								<a class="note-img" href="#">
									<img src="./images/note/kancolle.gif">
								</a>
								<div class="note-content">
								    <div class="author">
								      	<a class="avatar" target="_blank" href="#">
								        	<img class="img-rounded" src="./images/avatar/kaziya.jpg">
										</a>      
										<div class="name">
									        <a target="_blank" href="#">Kaziya</a>
									        <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
								      	</div>
								    </div>
								    <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
								    <p class="abstract">
								      Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
								    </p>
								    <div class="meta">
								        <a class="collection-tag" target="_blank" href="#">连载小说</a>
								      	<a target="_blank" href="#">
								        	<span class="glyphicon glyphicon-eye-open"></span> 233
										</a>        
										<a target="_blank" href="#">
								          <span class="glyphicon glyphicon-comment"></span> 1
										</a>      
										<a target="_blank" href="#">
											<span class="glyphicon glyphicon-heart"></span> 9
										</a>
										<a class="dislike">
											<i class="iconfont icon-dislike"></i>不爱的
										</a>
								    </div>
								  </div>
							</li>
						</ul>
					</div>
					<a  href="#" class="load-more">阅读更多</a>
				</div>
				<div class="main-right col-md-4 col-xs-4">
					<div class="board">
						<a href="#" class="board-item">
							<img src="./images/board/new.png" alt="">
						</a>
						<a href="#" class="board-item">
							<img src="./images/board/week.png" alt="">
						</a>
						<a href="#" class="board-item">
							<img src="./images/board/month.png" alt="">
						</a>
						<a href="#" class="board-item">
							<img src="./images/board/Repersent.jpg" alt="">
						</a>
						<a href="#" class="board-item">
							<img src="./images/board/Course.jpg" alt="">
						</a>
					</div>
					<div class="daily">
						<div class="title">
							<span>捡书日报</span>
							<a href="#">查看往期</a>
						</div>
						<a href="#" class="daily-content">
							<img src="./images/daily/neko.jpg" alt="">
							<div class="note-title">
								<p>燃烧你的梦！神秘！惊了！绝了！rua！无能狂怒！黑暗剑!</p>
							</div>
						</a>
						<a href="#" class="daily-content">
							<img src="./images/daily/goushi.jpg" alt="">
							<div class="note-title">
								<p>燃烧你的梦！神秘！惊了！绝了！rua！无能狂怒！黑暗剑!</p>
							</div>
						</a>
					</div>
					<div class="author-recommend">
						<div class="title">
							<span>作者推荐</span>
							<a class="page-change"><span class="glyphicon glyphicon-refresh"></span>换一批</a>
						</div>
						<ul class="author-list">
							<li class="author-item">
								<a class="avatar"  href="#">
						        	<img class="img-rounded" src="./images/avatar/ha.jpg">
								</a>
								<a class="follow following" state="0"><i class="iconfont icon-selected"></i> 已关注</a>
								<a href="#" class="name">jojo</a>
								<p>写了29.9k字 · 1.2k喜欢</p>
							</li>
							<li class="author-item">
								<a class="avatar" href="#">
						        	<img class="img-rounded" src="./images/avatar/ha.jpg">
								</a>
								<a class="follow" state="0">+ 关注</a>
								<a href="#" class="name">jojo</a>
								<p>写了29.9k字 · 1.2k喜欢</p>
							</li>
							<li class="author-item">
								<a class="avatar" href="#">
						        	<img class="img-rounded" src="./images/avatar/ha.jpg">
								</a>
								<a href="#" class="follow">+ 关注</a>
								<a href="#" class="name">jojo</a>
								<p>写了29.9k字 · 1.2k喜欢</p>
							</li>
							<li class="author-item">
								<a class="avatar"href="#">
						        	<img class="img-rounded" src="./images/avatar/ha.jpg">
								</a>
								<a href="#" class="follow">+ 关注</a>
								<a href="#" class="name">jojo</a>
								<p>写了29.9k字 · 1.2k喜欢</p>
							</li>
							<li class="author-item">
								<a class="avatar" href="#">
						        	<img class="img-rounded" src="./images/avatar/ha.jpg">
								</a>
								<a href="#" class="follow">+ 关注</a>
								<a href="#" class="name">jojo</a>
								<p>写了29.9k字 · 1.2k喜欢</p>
							</li>
						</ul>
						<a href="#" class="find-more">
    						查看全部 >
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="side-tool">
			<ul>
				<li class="back-to-top">
					<a class="function-btn">
						<i class="iconfont icon-less"></i>
					</a>
				</li>
			</ul>
		</div>
		<footer class="container footer">
			<div class="row">
				<div class="col-md-8 col-xs-8">
					<div class="footer-sns" style="text-align: center;padding-top: 25px;">
			          		<ul>
			          		    <li><a class="" target="_blank" href=""><i class="iconfont icon-yinlian"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-zhifubao"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-paypal"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-bitcoin"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-visa"></i></a></li>
			          		</ul>
	                </div>
	                <div class="link">
	                	<a href="#">关于捡书</a>
	                    <a href="#">联系我们</a>
	                    <a href="#">加入我们</a>
	                    <a href="#">我·日天·打钱</a>
	                    <a href="#">意见反馈</a>
	                </div>
	                <div class="regist-info" style="text-align: center;padding: 10px;">
	                    <p>©2017-2018 &nbsp &nbsp 咸鱼代码科技无限公司 &nbsp &nbsp TEL：12580 &nbsp &nbsp 粤IPC备 2333号</p>
	                    <a href="#" >
	                    	<img src="./images/common/Verification.png" alt="">
	                    </a>
	                </div>
	            </div>    
			</div>
		</footer>
	</body>
	<script type="text/javascript">

  		$(function(carousel){
  			var slideon=setInterval(turnImgs, 3000);
  			function fi(e) {
				$(e).addClass('fadein');
			};
			function fo(e) {
				$(e).removeClass('fadein');
			};
  			var imgs = $(".carousel-inner").children();
			var imgs_len = $(".carousel-inner").children().length - 1;

			function turnImgs(dir) {
	   	 		var cur_index=$(".carousel-inner").children("div.fadein").index();
			    // alert(cur_index);
			    // alert(imgs.eq(cur_index).html());
			    if(dir==1){
			    	if (cur_index == imgs_len) {
				      fo(imgs.eq(cur_index));
				      fi(imgs.eq(0));
				    } else {
				      fo(imgs.eq(cur_index));
				      fi(imgs.eq(cur_index+1));
				    }
			    }
			    else{
			    	if (cur_index == 0) {
				      fo(imgs.eq(0));
				      fi(imgs.eq(imgs_len));
				    } else {
				      fo(imgs.eq(cur_index));
				      fi(imgs.eq(cur_index-1));
				    }
				}
			  };		
			$(".carousel-control.right").click(function(){
			 	turnImgs(1);
			});
			$(".carousel-control.left").click(function(){
			 	turnImgs(0);
			});
			$("#recommend-carousel").hover(function() {
				clearInterval(slideon);
			}, function() {
				slideon=setInterval(turnImgs, 3000);
			});
    	});
    	$(function(to_top){
    		$(window).scroll(function(){
    			if($(this).scrollTop()<500){
    				// $(".back-to-top").show();
    				if($(".side-tool").is(":visible")){
    					console.log(1);
    					$(".side-tool").hide();
    				}	
    			}
    			else{
    				if($(".side-tool").is(":hidden")){
    					console.log(2);
    					$(".side-tool").show();
    				}
    				
    			}
    		});
			$(".side-tool .back-to-top .function-btn").click(function(event) {
				$("body,html").animate({scrollTop:0},900);
			});
    	});
    	$(function(nav_dropdown){
    		$(".navbar-collapse .navbar-nav .message").on('mouseenter',function(e) {
    			e.preventDefault();
    			$(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
    		});
    		
    		$(".navbar-collapse .navbar-nav .message").on('mouseleave',function() {
				$(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();			
    		});
    		$(".navbar-collapse .navbar-nav .message").on('click',function() {
				if($(".navbar-collapse .navbar-nav .message .dropdown-menu").is(":hidden")){
    				$(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
    			}
    			else{
    				$(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();	
    			}			
    		});

    		$(".user-avatar .dropdown").mouseenter(function(e) {
    			// $(".user-avatar .dropdown-toggle").dropdown('toggle');
    			e.preventDefault();
    			$(".user-avatar .dropdown-menu").show();
    		});
    		$(".user-avatar").on('mouseleave',function() {
    			// console.log(2);
				$(".user-avatar .dropdown-menu").hide();
    		});
    		$(".user-avatar").on('click',function() {
    			if($(".user-avatar .dropdown-menu").is(":hidden")){
    				console.log(2);
    				$(".user-avatar .dropdown-menu").show();
    			}
    			else{
    				$(".user-avatar .dropdown-menu").hide();
    			}
    		});
    	});
    	$(function(modal){
    		$(".theme .theme-btn").on('click',function(){
    			if($(".theme .modal-popup").is(":hidden")){
    				$(".theme .modal-popup").fadeIn();
    			}
    			else{
    				$(".theme .modal-popup").fadeOut();
    			}
    		});
    	});
    	$(function(follow){
    		$(".author-list .author-item .follow").on('click',function(){
    			if($(this).hasClass('following')){
    				$(this).removeClass('following');
    				$(this).empty();
    				$(this).html("+ 关注");
    			}
    			else{
    				$(this).addClass('following');
    				$(this).empty();
    				$(this).html('<i class="iconfont icon-selected"></i> 已关注');
    			}
				
    		});
    	});
     	$(function(message_link){
			$("#message-dropdownMenu").on('click',function(){
				window.location.href="./Notification.html";
			});
    	});   	
	</script>

</html>