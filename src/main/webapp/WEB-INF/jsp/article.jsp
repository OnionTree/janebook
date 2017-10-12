<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <title>Article</title>
    <link rel="stylesheet" type="text/css" href="/janebook/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/janebook/css/iconfont.css">
    <link rel="stylesheet" type="text/css" href="/janebook/emoji/wEmoji.css">
    <script type="text/javascript" src="/janebook/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/janebook/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/janebook/emoji/wEmoji.config.js"></script>
    <script type="text/javascript" src="/janebook/emoji/wEmoji.js"></script>
    <script type="text/javascript" src="/janebook/layer/layer.js"></script>
</head>
<css type="text/css">
    <style type="text/css" role="frame">
        body {
            background-color: #3f3f3f;
            min-width: 768px;
            padding-top: 66px;
        }

        nav {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 99;
            width: 100%;
        }

        @font-face {
            font-family: lsFont;
            src: url('/janebook/fonts/lsfont.ttf');
        }

        a {
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
        }

        a:hover {
            text-decoration: none;
        }

        a:focus {
            text-decoration: none;
        }

        .night-mode {
            color: #c8c8c8;
        }

        .night-mode a,
        {
            color: #969696;
        }

        .night-mode p {
            color: #c8c8c8;
        }

        .night-mode i {
            color: #c8c8c8;
        }

        .width-limit {
            min-width: 768px;
            max-width: 1600px;
            height: 64px;
            margin: 0 auto;
        }

        .navbar-header {
            height: 65px;
        }

        .navbar-header a {
            padding-top: 10px;
            padding-bottom: 0;
            height: 100%;
        }

        .navbar-header a:link {
            color: #a3cf62;
        }

        .navbar-header a:hover {
            color: #a3cf62;
        }

        .navbar-header a:active {
            color: #a3cf62;
        }

        .navbar-header a:visited {
            color: #a3cf62;
        }

        .navbar-brand {
            display: inline-block;
            height: 62px;
        }

        .navbar-brand>img {
            display: inline-block;
        }

        .logo-top {
            height: 45px;
        }

        .logo-text {
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

        .navbar-nav>li {
            height: 64px;
        }

        .navbar-nav>li>a {
            line-height: 30px;
            color: #c8c8c8;
            height: 64px;
            font-size: 17px;
            font-weight: bold;
            padding-top: 15px;
            padding-bottom: 15px;
        }

        .navbar-nav>li>a:hover {
            background-color: #2f2f2f;
        }

        .navbar-nav>li>a:visited {
            background-color: #2f2f2f;
        }

        .navbar-bar .input-group {
            margin-top: auto;
            width: 100%;
        }

        .navbar-bar .input-group-btn {
            position: relative;
            z-index: 99;
            border: none;
        }

        .navbar-bar .navbar-form {
            margin-top: 13px;
        }

        .navbar-bar .input-group-btn:last-child>.btn {
            margin-left: -40px;
        }

        .search-btn {
            position: relative;
            border: none;
            background: #4f4f4f;
            color: #c8c8c8;
        }

        .navbar-bar .input-group .form-control:first-child {
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

        .btn-custom {
            border-radius: 20px;
            width: 80px;
        }

        .navbar-bar .btn-custom:hover {
            color: #bed742;
            border-color: #bed742;
            border-radius: 20px;
            background-color: rgba(190, 215, 66, .05);
        }

        .navbar-rightpart .btn-sign-up {
            font-size: 17px;
            width: 80px;
            height: 38px;
            line-height: 26px;
            margin-top: -4px;
            color: #a3cf62;
            border: 1px solid rgba(163, 207, 98, .7);
            background-color: transparent;
            font-weight: bold;
            transition: background-color 0.2s, border-color 0.2s, color 0.0s;
            -webkit-transition: background-color 0.2s, border-color 0.2s, color 0.2s;
        }

        .navbar-rightpart .btn-sign-up:hover {
            color: #bed742;
            border-color: #bed742;
            background-color: rgba(190, 215, 66, .05);
        }

        .navbar-rightpart .btn-write {
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

        .navbar-rightpart .btn-write:hover {
            background-color: #bed742;
        }

        .navbar-rightpart .nav li {
            display: inline;
            line-height: 40px;
            list-style-type: none;
        }

        .navbar-rightpart .navbar-nav>li {
            float: left;
        }

        .navbar-header .navbar-toggle {
            float: left;
            padding: 11px 10px;
            margin-top: 9px;
            background-color: transparent;
            background-image: none;
            border: 1px solid transparent;
            border-color: #2f2f2f;
            border-radius: 4px;
        }

        .navbar-nav {
            margin: 0;
        }

        .navbar-bar .navbar-collapse {
            width: auto;
            background-color: #3f3f3f;
            border-bottom: 1px solid #2f2f2f;
        }

        .navbar-collapse.in {
            width: 100vw;
            height: auto;
        }

        .navbar-collapse ul .first a {
            color: #a3cf62;
        }

        .navbar-bar .after {
            display: none;
        }

        .navbar-toggle .icon-bar {
            background-color: #c8c8c8;
        }

        .navbar-form .search-form {
            border-color: #4f4f4f;
            background: #4f4f4f;
            color: #c8c8c8;
        }

        .navbar-nav>li>a>span {
            line-height: 35px;
        }

        @media screen and (max-width: 1000px) and (min-width: 768px) {
            a.after {
                display: block!important;
            }
            a.before {
                display: none!important;
            }
            .nav>li>a {
                padding: 10px 10px;
                line-height: 45px;
            }
        }

        @media screen and (max-width: 894px) and (min-width: 768px) {
            .search-form {
                width: 140px!important;
            }
        }

        @media screen and (max-width: 768px) {
            .navbar-collapse.in {
                position: relative;
                z-index: 3;
            }
        }

        .navbar-bar ul li a {
            text-align: center;
        }
    </style>
    <style type="text/css" role="log-in-nav">
        .user-avatar {
            width: 80px;
        }

        .user-avatar .avatar {
            display: block;
            width: 45px;
            height: 45px;
            overflow: hidden;
            padding: 0;
            border-radius: 50%;
        }

        .user-avatar .avatar .caret {
            color: #c8c8c8;
            position: absolute;
            top: 50%;
            right: 10%;
        }

        .avatar>img {
            width: 45px;
            height: auto;
            border-radius: 50%;
        }

        .navbar-nav .dropdown-menu {
            position: absolute;

            top: 100%;
            left: 0;
            background-color: #3f3f3f;
        }

        .user-avatar .dropdown-menu {
            box-shadow: 0 5px 5px #4a4a4a;
            margin-top: 0px;
            border: 0;
        }

        .user-avatar .dropdown-menu a {
            padding: 10px 20px!important;
            line-height: 30px!important;
            color: #c8c8c8;
            transition: all .1s ease;
        }

        .user-avatar .dropdown-menu a:hover {
            color: #c8c8c8;
            background-color: #2f2f2f;
        }

        .dropdown-menu .glyphicon {
            margin-top: -5px;
            margin-right: 15px;
            font-size: 18px;
            color: #a3cf62;
            vertical-align: middle;
        }

        .navbar-collapse .navbar-nav .message .dropdown-toggle {
            padding: 15px 15px;
            text-align: center;
            line-height: 34px;
        }

        .navbar-collapse .navbar-nav .message .dropdown-toggle:hover {
            background-color: #2f2f2f;
        }

        .navbar-collapse .navbar-nav .message .dropdown-toggle a {
            color: #c8c8c8;
            /* height: 60px; */
            font-size: 17px;
            font-weight: bold;
        }

        .navbar-collapse .navbar-nav .message .dropdown-menu a {
            padding: 10px 20px;
            line-height: 30px;
            color: #c8c8c8;
            transition: all .1s ease;
            text-align: left;
            /* background-color:  */
        }

        .navbar-collapse .navbar-nav .message .dropdown-menu a:hover {
            background-color: #2f2f2f;
        }

        .navbar-collapse .navbar-nav .message .dropdown-menu {
            /* position: relative; */
            box-shadow: 0 5px 5px #4a4a4a;
            margin-top: 0px;
            background-color: #3f3f3f;
            width: 100%;
        }

        .navbar-nav .message .dropdown-menu .iconfont {
            margin-top: -5px;
            margin-right: 15px;
            font-size: 18px;
            color: #a3cf62;
            vertical-align: middle;
        }

        .message .dropdown-menu>li {
            position: relative;
        }

        .message .icon-xinxiaoxi1 {
            color: #a3cf62;
            position: absolute;
            right: 5px;
            top: 3px;
            font-size: 10px;
        }

        .message .dropdown-menu .icon-xinxiaoxi1 {
            color: #a3cf62;
            position: absolute;
            right: 5px;
            top: 3px;
            font-size: 10px!important;
        }

        .message .hasmessage {}

        .theme .dropdown-toggle {
            color: #c8c8c8;
            display: inline-block;
        }

        .theme .dropdown-toggle span {
            vertical-align: middle;
            color: #c8c8c8;
            font-size: 17px;
        }

        .nav .open>a,
        .nav .open>a:focus,
        .nav .open>a:hover {
            background-color: transparent;
        }

        @media screen and (max-width: 768px) {
            .navbar-nav .message .dropdown-menu {
                position: relative!important;
                /* display: block;
                        float: none;
                        width: auto; */
            }
            .navbar-nav .message .dropdown-menu a {
                text-align: center!important;
            }
        }
    </style>
    <style type="text/css" role="side-tool">
        .side-tool>ul {
            list-style-type: none;
            padding-left: 0;
        }

        .side-tool>ul>li {
            border: 1px solid rgba(181, 181, 181, 0.2);
            -webkit-transition: .1s ease-in;
            transition: .1s ease-in;
        }

        .side-tool>ul>li:hover {
            background-color: rgba(181, 181, 181, 0.3);
        }

        .icon-less {
            display: block;
            font-size: 22px;
            padding-top: 10px;
        }

        .side-tool .function-btn {
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
    <style type="text/css" role="main-content">
        .page-container {
            width: 72%;
            margin: 0 auto;
            min-height: 800px;
            /* border: solid 1px; */
        }

        .note .post {
            margin: 0 auto;
            padding-top: 20px;
            padding-bottom: 40px;
            /* width: 620px; */
        }

        .note .post i {
            color: #c8c8c8;
        }

        .note .article .title {
            margin: 20px 0 0;
            font-size: 36px;
            font-weight: 700;
            line-height: 1.3;
            word-break: break-word;
        }

        .note .article .author {
            margin: 30px 0 40px;
        }

        .note .article .author-avatar {
            display: inline-block;
            vertical-align: middle;
            width: 52px;
            height: 52px;
        }

        .note .article .author-avatar img {
            width: 52px;
            height: auto;
            border-radius: 50%;
        }

        .note .article .info {
            display: inline-block;
            vertical-align: middle;
            margin-left: 8px;
        }

        .note .article .info .tag {
            padding: 1px 2px;
            font-size: 12px;
            color: #a3cf62;
            border: 1px solid #a3cf62;
            border-radius: 3px;
        }

        .note .article .info .name {
            margin-left: 3px;
            margin-right: 3px;
            font-size: 16px;
            vertical-align: middle;
        }

        .note .article .info .name a {
            color: #c8c8c8;
        }

        .note .article .info .name a:hover {
            color: #fff;
        }

        .note .article .info .follow {
            border-radius: 40px;
            color: #fff;
            padding: 2px 7px 2px 5px;
            font-size: 12px;
        }

        .note .post .article .author .meta {
            margin-top: 5px;
            font-size: 12px;
            color: #969696;
        }

        .note .post .article .author .meta span {
            padding-right: 5px;
        }

        .note .post .article .author .edit {
            float: right;
            margin-top: 8px;
            padding: 0 12px;
            font-size: 14px;
            border: 1px solid #dcdcdc;
            color: #9b9b9b;
            line-height: 30px;
            border-radius: 50px;
        }

        .note .post .article .author .edit:hover {
            background-color: hsla(0, 0%, 71%, .1);
        }

        .note .post .article .note-content {
            font-size: 16px;
            font-weight: 400;
            line-height: 1.7;
            color: #b1b1b1;
        }

        .note .post .article .note-content .images-package {
            width: 120%;
            margin-left: -10%;
            padding-bottom: 25px;
            text-align: center;
        }

        .note .post .article .note-content .images-package .image-caption {
            min-width: 20%;
            max-width: 25%;
            min-height: 22px;
            padding: 10px;
            margin: 0 auto;
            border-bottom: 1px solid #2f2f2f;
            font-size: 14px;
            color: #969696;
            line-height: 1.7;
        }

        .note .post .article .note-content .note-text p {
            margin: 0 0 25px;
            word-break: break-word!important;
        }

        .note .post .article .note-content .note-footer {
            margin: 40px 0 30px;
        }

        .note .post .article .note-content .note-footer span,
        .note .post .article .note-content .note-footer a {
            color: #9b9b9b;
        }

        .note .post .article .note-content .note-footer .copyright {
            float: right;
            margin-top: 5px;
            font-size: 12px;
            line-height: 1.7;
        }

        .note .post .article .note-content .note-footer .modal-wrap {
            float: right;
            margin-top: 5px;
            margin-right: 20px;
            font-size: 12px;
            line-height: 1.7;
            cursor: pointer;
        }

        .note .post .author-detail {
            padding: 20px;
            background-color: hsla(0, 0%, 71%, .1);
            border: 1px solid #2f2f2f;
            border-radius: 4px;
            font-size: 12px;
        }

        .note .post .author-detail .avatar {
            float: left;
            vertical-align: middle;
            width: 52px;
            height: 52px;
            margin-right: 8px;
        }

        .note .post .author-detail img {
            width: 52px;
            height: auto;
            border-radius: 50%;
        }

        .note .post .author-detail .follow {
            float: right;
            margin-top: 4px;
            padding: 8px 0;
            width: 100px;
            font-size: 16px;
            border-radius: 40px;
        }

        .note .post .author-detail .title {
            display: inline-block;
            font-size: 17px;
            line-height: 1.8;
            vertical-align: middle;
            color: #c8c8c8;
        }

        .note .post .author-detail .info p {
            color: #969696;
        }

        .note .post .author-detail .signature {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #2f2f2f;
            color: #969696;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .note .post .support-author {
            padding: 30px 0 20px;
            text-align: center;
            border-bottom: 1px solid #2f2f2f;
        }

        .note .post .support-author .btn-pay {
            margin-bottom: 20px;
            padding: 8px 25px;
            font-size: 16px;
            color: #fff;
            background-color: #a3cf62;
            border-radius: 20px;
        }

        .note .post .support-author .btn-pay:hover {
            background-color: #32CD32;
            opacity: 0.5;
        }

        .note .post .meta-bottom {
            margin-top: 30px;
            padding: 13px 0 15px;
        }

        .note .post .meta-bottom .like {
            display: inline-block;
        }

        .note .post .meta-bottom .like-group {
            border: 1px solid #a3cf62;
            border-radius: 40px;
        }

        .note .post .meta-bottom .like-group-active {
            background-color: #a3cf62;
            border-radius: 40px;
            border: 1px solid #a3cf62;
        }

        .note .post .meta-bottom .like-group-active a,
        .note .post .meta-bottom .like-group-active i {
            color: #fff;
        }

        .note .post .meta-bottom .like-group-active .modal-wrap {
            border-left: 1px solid rgba(255, 255, 255, .9);
        }

        .note .post .meta-bottom .like-group:hover {
            background-color: rgba(142, 247, 204, .05);
        }

        .note .post .meta-bottom .love {
            font-size: 19px;
            display: inline-block;
            padding: 10px 15px 10px 30px;
        }

        .note .post .meta-bottom .like-group a {
            color: #a3cf62;
        }

        .note .post .meta-bottom .like-group i {
            color: #a3cf62;
        }

        .note .post .meta-bottom .modal-wrap {
            padding: 10px 15px 10px 15px;
            font-size: 18px;
            color: #a3cf62;
            border-left: 1px solid rgba(163, 207, 98, .4);
            display: inline-block;
        }

        .note .post .meta-bottom .like-group .modal-wrap a {
            color: #a3cf62;
        }

        .note .post .meta-bottom .share {
            float: right;
            margin-top: 3px;
        }

        .note .post .meta-bottom .share .share-circle {
            width: 50px;
            height: 50px;
            margin-left: 5px;
            text-align: center;
            border: 1px solid #2f2f2f;
            border-radius: 50%;
            line-height: 40px;
            display: inline-block;
            vertical-align: bottom;
        }

        .note .post .meta-bottom .share .share-circle:hover {
            background-color: hsla(0, 0%, 71%, .1);
        }

        .note .post .meta-bottom .share .share-circle i {
            margin-top: 10px;
            font-size: 24px;
            line-height: 2;
        }

        .note .post .meta-bottom .share .share-circle .icon-weibo {
            color: #e05244;
        }

        .note .post .meta-bottom .share .share-circle .icon-wechat {
            color: #00bb29;
        }

        .note .post .meta-bottom .share .share-more {
            display: inline-block;
            vertical-align: bottom;
            width: auto;
            padding: 6px 18px;
            font-size: 14px;
            color: #9b9b9b;
            border-radius: 50px;
            margin-left: 5px;
            line-height: 40px;
            text-align: center;
            border: 1px solid #2f2f2f;
        }

        .note .post .comment-list {
            padding-top: 100px;
        }

        .note .post .comment-list .normal-comment-list {
            margin-top: 30px;
        }

        .note .post .comment-list .new-comment {
            padding-left: 60px;
            position: relative;
        }

        .note .post .comment-list .new-comment textarea {
            padding: 10px 15px;
            width: 100%;
            height: 80px;
            font-size: 13px;
            border: 1px solid #2f2f2f;
            border-radius: 4px;
            background-color: hsla(0, 0%, 71%, .1);
            resize: none;
            display: inline-block;
            vertical-align: top;
            outline-style: none;
        }

        .note .post .comment-list .new-comment .avatar {
            position: absolute;
            left: 0;
            width: 52px;
            height: 52px;
        }

        .note .post .comment-list .new-comment .avatar img {
            border-radius: 50%;
        }

        .note .post .comment-list .new-comment .write-function-block {
            height: 50px;
            display: none;
        }

        .note .post .comment-list .new-comment .write-function-block.sub {
            height: 50px;
            display: block!important;
        }

        .note .post .comment-list .new-comment .emoji-btn {
            float: left;
            margin-top: 14px;
            cursor: pointer;
        }

        .note .post .comment-list .new-comment .emoji .iconfont {
            font-size: 17px;
        }

        .note .post .comment-list .new-comment .write-function-block .hint {
            float: left;
            margin: 20px 0 0 20px;
            font-size: 13px;
            color: #969696;
        }

        .note .post .comment-list .new-comment .write-function-block .btn-send {
            float: right;
            width: 78px;
            margin: 10px 0;
            padding: 8px 18px;
            font-size: 16px;
            border: none;
            border-radius: 20px;
            color: #fff!important;
            background-color: #42c02e;
            cursor: pointer;
            outline: none;
            display: block;
        }

        .note .post .comment-list .new-comment .write-function-block .btn-send:hover {
            background-color: #449d44;
            border-color: #398439;
        }

        .note .post .comment-list .new-comment .write-function-block .cancel {
            float: right;
            margin: 18px 30px 0 0;
            font-size: 16px;
            color: #969696;
        }

        .note .post .comment-list .new-comment .write-function-block .cancel:hover {
            color: #fff;
        }

        .note .post .comment-list .new-comment .emoji-con {
            display: none;
            position: absolute;
            left: -0px;
            z-index: 999;
        }

        .note .post .comment-list .new-comment .emoji-con:after {
            position: absolute;
            top: -9px;
            left: 9.5%;
            content: "";
            display: inline-block;
            border-left: 9px solid transparent;
            border-right: 9px solid transparent;
            border-bottom: 9px solid;
            border-bottom-color: #2f2f2f;
        }

        .note .post .comment-list .top {
            padding-bottom: 20px;
            font-size: 17px;
            font-weight: 700;
            border-bottom: 1px solid #2f2f2f;
        }

        .note .post .comment-list .normal-comment-list .top .author-only {
            margin-left: 10px;
            padding: 4px 8px;
            font-size: 12px;
            color: #969696;
            border: 1px solid #2f2f2f;
            border-radius: 12px;
            cursor: pointer;
        }

        .note .post .comment-list .top .pull-right a {
            margin-left: 10px;
            font-size: 12px;
            font-weight: 400;
            cursor: pointer;
            color: #969696;
        ;
        }

        .note .post .comment-list .top .pull-right a.active {
            color: #c8c8c8;
        ;
        }

        .note .post .comment-list .comment {
            padding: 20px 0 30px;
            border-bottom: 1px solid #2f2f2f;
        }

        .note .post .comment-list .author {
            margin-bottom: 15px;
        }

        .note .post .comment-list .avatar {
            margin-right: 5px;
            width: 38px;
            height: 38px;
            vertical-align: middle;
            display: inline-block;
        }

        .note .post .comment-list .avatar img {
            width: 100%;
            height: 100%;
            /* border: 1px solid #ddd; */
            border-radius: 50%;
        }

        .note .post .comment-list .info {
            display: inline-block;
            vertical-align: middle;
        }

        .note .post .comment-list .meta {
            font-size: 12px;
            color: #969696;
        }

        .note .post .comment-list .meta span {
            margin-right: 6px;
        }

        .note .post .comment-list .info a {
            color: #c8c8c8;
        }

        .note .post .comment-list .comment p {
            font-size: 16px;
            color: #c8c8c8;
        }

        .note .post .comment-list .comment p>img {
            width: 20px;
            height: auto;
        }

        .note .post .comment-list .tool-group a {
            margin-right: 10px;
            color: #969696;
            display: inline-block;
            vertical-align: middle;
            cursor: pointer;
        }

        .note .post .comment-list .tool-group a:hover {
            color: #42c02e;
        }

        .note .post .comment-list .tool-group a i {
            margin-right: 5px;
            font-size: 18px;
            vertical-align: middle;
            color: #969696;
        }

        .note .post .comment-list .tool-group a i.active {
            color: #42c02e;
        }

        .note .post .comment-list .comment-wrap .comment-delete,
        .note .post .comment-list .comment-wrap .report {
            float: right;
            display: none;
        }

        .note .post .comment-list .comment-wrap .report:hover {
            color: #c8c8c8;
        }

        .note .post .comment-list .sub-comment-list {
            margin-top: 20px;
            padding: 5px 0 5px 20px;
            border-left: 2px solid #2f2f2f;
        }

        .note .post .comment-list .sub-comment {
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px dashed #2f2f2f;
        }

        .note .post .comment-list .sub-comment-list p {
            margin: 0 0 5px;
            font-size: 14px;
            line-height: 1.5;
            color: #c8c8c8;
        }

        .note .post .comment-list .sub-tool-group {
            font-size: 12px;
            color: #969696;
        }

        .note .post .comment-list .sub-tool-group i {
            margin-right: 5px;
            font-size: 14px;
            vertical-align: middle;
        }

        .note .post .comment-list .sub-tool-group a {
            margin-left: 10px;
            color: #969696;
        }

        .note .post .comment-list .sub-tool-group a:hover {
            color: #42c02e;
        }

        .note .post .comment-list .sub-comment .report {
            float: right;
            margin: 1px 0 0 10px;
            display: none;
        }

        .note .post .comment-list .more-comment {
            font-size: 14px;
            color: #969696;
            border: none;
        }

        .note .post .comment-list .add-comment-btn {
            color: #969696;
            cursor: pointer;
        }

        .note .post .comment-list .add-comment-btn:hover {
            color: #42c02e;
        }

        .note .post .comment-list .sub-comment:last-child {
            margin: 0;
            padding: 0;
            border: none;
        }

        .note .post .comment-list .add-comment-btn i {
            margin-right: 5px;
        }

        .note .post .comment-list .line-warp {
            margin-left: 10px;
            padding-left: 10px;
            border-left: 1px solid #2f2f2f;
        }

        .note .post .pagination {
            margin: 20px 0;
            text-align: center;
            display: block;
            border-radius: 4px;
        }

        .note .post .pagination>li {
            margin: 0 5px;
            display: inline-block;
        }

        .note .post .pagination a {
            border-color: #2f2f2f;
            background: transparent;
            position: relative;
            float: left;
            padding: 6px 12px;
            line-height: 1.42857;
            color: #969696;
            border-radius: 20px;
        }

        .note .post .pagination a:hover {
            background: rgba(0, 0, 0, .05);
        }

        .note .post .pagination a.active {
            background: none;
            border: none;
        }

        .note .post .following {
            border: 1px solid hsla(0, 0%, 59%, .6);
            background: none;
        }
    </style>
    <style type="text/css" role="note-bottom">
        .note-bottom .main {
            position: relative;
            margin: 0 auto;
            padding: 0 0 30px 0;
            width: 620px;
        }

        .main .include-collection {
            width: 100%;
            padding-top: 20px;
        }

        .note-bottom .main .title {
            padding-left: 8px;
            border-left: 3px solid #a3cf62;
            line-height: 1;
            font-size: 15px;
        }

        .note-bottom .collection {
            color: #c8c8c8;
            background-color: #4a4a4a;
        }

        .include-collection .collection {
            display: inline-block;
            margin: 0 20px 18px 0;
            min-height: 32px;
            border: 1px solid #2f2f2f;
            border-radius: 4px;
            vertical-align: top;
            overflow: hidden;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

        .include-collection .collection:hover {
            background-color: #2f2f2f;
        }

        .include-collection .collection img {
            height: 35px;
            width: auto;
        }

        .include-collection .collection-name {
            display: inline-block;
            padding: 0 13px 0 6px;
            font-size: 14px;
        }

        .include-collection .more-collection {
            display: inline-block;
            margin-top: 8px;
            font-size: 14px;
            color: #c8c8c8;
            background-color: transparent;
            cursor: pointer;
        }

        .main .include-collection .add-collection {
            height: 36px;
            line-height: 36px;
            font-size: 14px;
            border: 1px solid #2f2f2f;
            border-radius: 4px;
            display: inline-block;
            margin: 0 20px 18px 0;
            color: #c8c8c8;
            cursor: pointer;
        }

        .main .include-collection .add-collection:hover {
            background: rgba(0, 0, 0, .05);
        }

        .recommend-note .meta,
        .recommend-note .list {}

        .recommend-note .list {
            margin-top: 20px;
        }

        .recommend-note .list .note {
            display: block;
            margin-bottom: 25px;
            padding: 0 0 25px 0;
            border-bottom: 1px solid #2f2f2f;
            min-height: 136px;
        }

        .recommend-note .meta .title {
            padding-left: 8px;
            border-left: 3px solid #a3cf62;
            line-height: 1;
            font-size: 15px;
        }

        .recommend-note .meta .title .more {
            float: right;
            font-size: 14px;
            color: #A0A0A0;
        }

        .recommend-note .meta .title .more:hover {
            color: #c8c8c8;
        }

        .recommend-note .list .note .title {
            display: inherit;
            margin-bottom: 4px;
            font-size: 18px;
            line-height: 27px;
            font-weight: bold;
            color: #c8c8c8;
            overflow: hidden;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .recommend-note .list .note .cover {
            float: right;
            margin: -5px 0 0 15px;
            width: 150px;
            height: 120px;
            display: block;
            overflow: hidden;
        }

        .recommend-note .list .note .cover img {
            width: 100%;
            /* height: auto; */
        }

        .recommend-note .list .note .description {
            margin-bottom: 12px;
            font-size: 13px;
            line-height: 23px;
            color: #c8c8c8;
            overflow: hidden;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
        }

        .recommend-note .list .note .author .avatar img {
            width: 30px;
        }

        .recommend-note .list .note .author .name {
            display: inline-block;
            color: #c8c8c8;
            vertical-align: middle;
        }
    </style>
    <style type="text/css" role="footer">
        .footer {
            height: 180px;
            bottom: 0px;
            padding-right: 0;
        }

        .footer .link {
            text-align: center;
            padding-top: 5px;
            padding-bottom: 5px;
        }

        .footer a {
            padding: 5px;
            color: #969696;
            text-decoration-line: none;
            -webkit-transition: .3s ease;
            transition: .3s ease;
        }

        .footer a:hover {
            color: #c8c8c8;
        }

        .footer-sns ul {
            padding-left: 0;
            list-style: none;
        }

        .footer-sns ul li {
            display: inline-block;
        }

        .footer-sns ul li i {
            padding: 0 10px;
            font-size: 25px;
        }
    </style>
    <style type="text/css" role="modal-popup">
        .theme-btn {
            display: inline-block;
            position: relative;
        }

        .nav .modal-popup {
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

        .style-mode .popover-modal:after,
        .style-mode .popover-modal:before {
            position: absolute;
            top: -10px;
            left: 78%;
            content: "";
            display: inline-block;
            border: 9px solid transparent;
            border-top: none;
        }

        .style-mode .popover-modal:after,
        nav .style-mode .popover-modal:before {
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

        .style-mode .day-night-group {
            width: auto;
            vertical-align: middle;
            display: inline-block;
            height: auto;
        }

        .style-mode .switch {
            font-size: 0;
            letter-spacing: -4px;
        }

        .style-mode .switch-btn {
            width: 49%;
            text-align: center;
            font-size: 14px;
            letter-spacing: 0!important;
            color: #969696;
            border: 1px solid #e5e5e5;
            vertical-align: middle;
            display: inline-block;
        }

        .style-mode .meta {
            padding-left: 4px;
            margin-right: 16px;
            font-size: 14px;
            color: #969696;
            line-height: 40px;
            vertical-align: middle;
            display: inline-block;
        }

        .style-mode .switch-btn:first-child {
            padding: 10px 13px 10px 17px;
            border-radius: 20px 0 0 20px;
            border-right: none;
        }

        .style-mode .switch-btn:last-child {
            padding: 10px 17px 10px 13px;
            border-radius: 0 20px 20px 0;
            border-left: none;
        }

        .navbar-rightpart .nav li {
            line-height: 25px;
        }

        .style-mode .font-family-group {
            margin-bottom: 10px;
        }

        .style-mode .glyphicon-adjust {
            font-size: 17px;
            display: inline-block;
            top: 3px;
            padding-right: 3px;
        }

        body.night-mode nav .style-mode .switch-btn.active {
            color: #dcdcdc;
            background-color: #3f7cc1;
            box-shadow: inset 0 0 6px rgba(0, 0, 0, .2);
        }
    </style>
</css>

<body class="night-mode">
<shiro:authenticated>
    <%@include file="nav-login.jsp"%>
</shiro:authenticated>
<shiro:guest>
    <%@include file="nav.jsp"%>
</shiro:guest>
<div class="container main-content">
    <div class="page-container">
        <div class="note">
            <div class="post">
                <div class="article">
                    <h1 id="article-title" class="title">燃烧你的梦！</h1>
                    <div class="author">
                        <a href="#" class="author-avatar">
                            <img src="/janebook/${user.avatar}" alt="">
                        </a>
                        <div class="info">
                            <span class="tag">${user.userId}</span>
                            <span id="article-author" class="name"><a href="#">乌石堰</a></span>
                            <a class="btn btn-success follow">+ 关注</a>
                            <div class="meta">
                                <!-- 如果文章更新时间大于发布时间，那么使用 tooltip 显示更新时间 -->
                                <span id="article-time" class="publish-time" data-toggle="tooltip" data-placement="bottom" title="">2017.09.18 16:33*</span>
                                <span id="article-num" class="wordage">字数 1556</span>
                                <span id="article-browse" class="views-count">阅读 4049</span><span id="article-comment-num" class="comments-count">评论 34</span><span id="article-favor" class="likes-count">喜欢 86</span><span id="article-reward" class="rewards-count">赞赏 2</span>
                            </div>
                        </div>
                        <!-- 如果是当前作者，加入编辑按钮 -->
                        <a href="#" target="_blank" class="edit">编辑文章</a>
                    </div>
                    <div class="note-content">
                        <div class="note-text">
                            <p>我在 Facebook 有一位好友。他本科国内 Top 2 大学毕业，在美国拿了最顶尖大学的硕士学位，然后年纪轻轻就做到了技术负责人，拿着超高的薪水。就是这么一个开了挂一般的天才，每个星期六晚上的夜里，他是永远是睡不着的。</p>
                            <p>我问他为什么失眠。他的回答是焦虑。</p>
                            <p>他说，他马上就要30岁了。他的老板扎克伯格在30岁时时已经缔造了 Facebook；贝佐斯辞去了华尔街的副总裁职位，开始了 Amazon 的创业旅程；丁磊已经成为了中国首富；李彦宏也在这一年放弃了财务自由的硅谷生活，转身回到中国，创立了百度。远的不说，近处他有几个认识的同龄人在国内创业风生水起，千万投资，还有几个被评为 Forbes 30 Under 30。</p>
                            <p>而他呢，不过一个程序员。30岁的时候依然在硅谷租着房子，至今没有感觉做出什么改变世界的产品。每当看到硅谷大华超市里面拖家带口的华人老工程师，他就觉得可以看穿未来 —— 十年后他也会是这样：挺着大肚子，带着孩子，为柴米油盐斤斤计较。</p>
                            <p>我当时笑着说，你哪会那样。你现在只不过是少年维特的烦恼，你之前的生命如夏花般灿烂，这之后平凡也不会是唯一的答案。</p>
                            <p>现在想想，我也许过于乐观了。现在超市里看到的华人工程师，他们当年都是国内数一数二的学霸，大多在没有父母支持的情况下，漂洋过海，学成毕业，留在硅谷（那个时候恐怕谷歌还没上市），真是比我们这代留学生优秀太多。即使这样，在我们这帮不知天高地厚的年轻人看来，他们也老了、无聊了、泯然众人矣了。十年之后，我们这代程序员，是否也会被后辈所鄙弃？</p>
                            <p>这个问题我想无数人思考过，无论是国内的还是硅谷的，无论是不是程序员。当年扎克伯格一直为自己极客的身份感到自豪，也惧怕最后被世俗裹挟，成为所谓职场上指手画脚的老油条——于是他在自己名片上的职位 CEO 前加上了个“他妈的”；超级极客约翰卡马克在成为 Oculus CTO 之后，依然坚持每天写代码，一天不写就觉得浑身不舒服，要在推特上吐槽自己。</p>
                            <p>这两个人直到今天依然很酷，依然是程序员心中的偶像。</p>
                            <p>有人说，这两个人天赋异禀，骨骼惊奇，是万中无一的程序员。然而主流世界观就是，我们终将老去。科技行业的日新月异更是决定了，我们的代码终将被覆盖，我们做的产品终将会落寞，我们讨论的技术终将会淘汰，那我们程序员还剩下什么？</p>
                            <p>神龟虽寿，犹有竟时。腾蛇乘雾，终为土灰。</p>
                            <p>要回答这个问题，我想谈两位艺术家。一位是音乐之父巴赫，另一位是音乐神童莫扎特。前者生前是一位宫廷乐手，为王宫贵族谱曲，死后80年，他伟大的作品才在极其偶然的情况下被门德尔松发现；后者生前亦不受待见，英年早逝后无人送葬。</p>
                            <p>这两个人在生前都是普普通通，绝不像迈克尔杰克逊那样家喻户晓，身前身后都粉丝无数。他们的平常工作，与我们程序员一样，不过我们写代码，他们写乐谱。</p>
                            <p>我想，巴赫和莫扎特，在安安静静的谱写一首又一首曲目的时候，从来没有考虑过，他们以后会成为西方音乐的代名词。</p>
                            <p>我们程序员也一样，也许在他人看来我们只是螺丝钉。但是我们敲下来的每一行代码，也许都将缔造不凡。</p>
                            <p>史上最伟大的女程序员玛格丽特·汉密尔顿在为 NASA 写代码的时候，她负责的项目只是为了应对万分之一的意外事件，而她仍然兢兢业业地完成了工作。最后，她的程序真的发挥了作用，拯救了阿波罗计划。</p>
                            <p>所以，我们程序员一定要功成名就吗？一定要荣耀显达吗？这才算是不平凡才是幸福吗？虽然写代码确实赚钱，但如果多年后退休的我回到公司，发现年轻时候我写的代码或者库依然在被广泛的使用，我会由衷的欣慰。</p>
                            <p>作为一名年轻的程序员，我还想做出一些很酷的产品；还想在 Github 上开源一些程序供大家参考或者使用；我还想再写出一段段代码，让很多人的体验因为我的工作而不同。</p>
                            <p>李开复老师前段时间在哥大演讲。看着他思维活跃，跟毕业生们畅谈人工智能，我依然觉得他是一位很酷的程序员。也许这就是程序员这份工作意义的所在：数十年之后，我们依然可以通过技术紧跟年轻人的世界，而年轻人依然觉得我们是一群很酷的极客。</p>
                        </div>
                        <div class="note-footer">
                            <a class="notebook" href="#">
                                <i class="iconfont icon-form"></i><span>产品见闻</span>
                            </a>
                            <div class="copyright" data-toggle="tooltip" data-html="true" data-original-title="转载请联系作者获得授权，并标注“捡书作者”。">
                                © 著作权归作者所有
                            </div>
                            <div class="modal-wrap">
                                <a id="report-modal">举报文章</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="author-detail">
                    <div class="info">
                        <a class="avatar" href="#">
                            <img src="/janebook/${user.avatar}" alt="cmn">
                        </a>
                        <a class="btn btn-success follow"><span>+ 关注</span></a>
                        <a id = "nickname"class="title" href="#">吴氏炎</a>
                        <i  class="iconfont icon-man"></i>
                        <p id="user-msg">写了 114514 字，被 233 人关注，获得了 233 个喜欢</p>
                    </div>
                    <div id="user-info" class="signature">情场杀手，原谅达人。</div>
                </div>
                <%--<div class="support-author">--%>
                    <%--<p class="summary">我叫饰演，24岁，学生desu！</p>--%>
                    <%--<div class="btn btn-pay">交♂ 易</div>--%>
                <%--</div>--%>
                <div class="meta-bottom">
                    <div class="like">
                        <div class="btn btn-like like-group">
                            <div class="love"><a><i class="iconfont icon-Love"></i>喜欢</a>
                            </div>
                            <div  class="modal-wrap"><a id="like-num">131</a>
                            </div>
                        </div>
                    </div>
                    <div class="share">
                        <a class="share-circle" href="#" data-toggle='tooltip' data-original-title='分享到微博'><i class="iconfont icon-weibo"></i></a>
                        <a class="share-circle" href="#" data-toggle='tooltip' data-original-title='分享到微信'><i class="iconfont icon-wechat"></i></a>
                        <a class="share-circle share-more" href="#">更多分享</a>
                    </div>
                </div>
                <div class="comment-list">
                    <div>
                        <form class="new-comment">
                            <a class="avatar"><img src="/janebook/${user.avatar}"></a>
                            <textarea placeholder="写下你的评论..." id="subText"></textarea>
                            <div class="write-function-block">
                                <div class="emoji-modal-wrap">
                                    <a class="emoji-btn"><i class="iconfont icon-smile" ></i></a>
                                </div>
                                <div class="hint">Ctrl+Return 发表</div>
                                <a id="btn-send-fir" class="btn btn-send">发送</a>
                                <a class="cancel">取消</a>
                            </div>
                            <div class="emoji-con">
                                <div class="wrapper"></div>
                                <div class="content"></div>
                            </div>
                        </form>
                        <!-- <button id="submit">提交</button> -->
                    </div>
                    <div id="comment-box" class="normal-comment-list">
                        <div class="top">
                            <span>19条评论</span>
                            <a class="author-only">只看作者</a>
                            <a class="close-btn" style="display: none;">关闭评论</a>
                            <div class="pull-right">
                                <a class="active">按喜欢排序</a>
                                <a class="">按时间正序</a>
                                <a class="">按时间倒序</a>
                            </div>
                        </div>


                    </div>
                    <div class="pagination-wrap">
                        <ul class="pagination">
                            <li>
                                <a href="#" class="active">1</a>
                            </li>
                            <li>
                                <a href="#" class="">2</a>
                            </li>
                            <li>
                                <a href="#" class="">下一页</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="note-bottom">
            <div class="main">
                <div class="title">被以下专题收入，发现更多相似内容</div>
                <div class="include-collection">
                    <a class="add-collection"><i class="iconfont ic-follow"></i>
                        <div class="collection-name">+收入到我的专题</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/EntertainmentGossip.png" alt="">
                        <div class="collection-name">娱乐八卦</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Animate.jpg" alt="">
                        <div class="collection-name">漫画&动画</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Prose.jpg" alt="">
                        <div class="collection-name">散文</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Camera.png" alt="">
                        <div class="collection-name">摄影</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Moyu.jpg" alt="">
                        <div class="collection-name">上班<span style="text-decoration:line-through;">摸鱼</span></div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Rua.jpg" alt="">
                        <div class="collection-name">猛男</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/RPG.jpg" alt="">
                        <div class="collection-name">游戏<span style="text-decoration:line-through;">打Gay</span></div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Books.jpg" alt="">
                        <div class="collection-name">读书</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Prose.jpg" alt="">
                        <div class="collection-name">散文</div>
                    </a>
                    <a href="#" class="collection">
                        <img src="/janebook/images/collection/Music.png" alt="">
                        <div class="collection-name">音乐</div>
                    </a>
                    <a class="more-collection">
                        全部展开  >
                    </a>
                </div>
            </div>
            <div class="recommend-note">
                <div class="meta">
                    <div class="title">推荐阅读
                        <a target="_blank" href="/" class="more">更多精彩内容  ><i class="iconfont ic-link"></i></a>
                    </div>
                </div>
                <div class="list">
                    <div class="note have-img">
                        <a class="cover" target="_blank" href="#">
                            <img src="/janebook/images/article/11.jpg" alt="">
                        </a>
                        <a target="_blank" href="/janebook/article/show/3" class="title">年轻的我们到底该如何相爱</a>
                        <p class="description">随着年岁渐长，我渐渐成了那个倾听亲友们说起子女早恋、子女苦恋、子女遭遇渣男（女）的准中年人。我听说的种种烦忧事件，不外乎以下几个版本：甲女和乙男高中早恋，学业一落千丈。两人不顾家长劝说，一意孤行。甲女高考失败，巨大压力下，复读成绩平平...</p>
                        <a target="_blank" href="#" class="author">
                            <div class="avatar" style="">
                                <img src="/janebook/images/user/7.jpg" alt=""><span class="name">金春妙</span>
                            </div>
                        </a>
                    </div>
                    <div class="note have-img">
                        <a class="cover" target="_blank" href="#">
                            <img src="/janebook/images/article/10.jpg" alt="">
                        </a>
                        <a target="_blank" href="/janebook/article/show/10" class="title">OFF学：会玩的人，才会更加容易成功</a>
                        <p class="description">文/小宋老师01.不知道你是否有着和我类似的体验：工作的时候，特别渴望假期的到来，但是当假期真正到来的时候，却又不知道该如何打发闲暇时间。叔本华曾经说过：“人的一生就像是一个钟摆，欲望得不到满足就痛苦，欲望得到满足就无聊。人就是在痛苦与无聊之间摇...</p>
                        <a target="_blank" href="#" class="author">
                            <div class="avatar" style="">
                                <img src="/janebook/images/user/2.jpg" alt=""><span class="name">奇奇漫悦读</span>
                            </div>
                        </a>
                    </div>
                    <div class="note have-img">
                        <a class="cover" target="_blank" href="#">
                            <img src="/janebook/images/article/1.jpg" alt="">
                        </a>
                        <a target="_blank" href="/janebook/article/show/1" class="title">四年的异国恋，我们没有输给时差与距离</a>
                        <p class="description">你说从你在小学见我的第一面时，你便认定了，我就是你这辈子要共度一生的女孩。于是，你央求班主任老师将我安排在你的旁边，与你同桌。当时的班主任老师，因为受了你那远在香港的父母之托，答应会好好关照你。所以，对于你提出的要求，她二话没说就答应了。可是，我却无论如何也不曾记得自己与你同桌的那段时光。或许是因为我是一名转校生的缘故吧，所以，在一开始的那半年里...</p>
                        <a target="_blank" href="#" class="author">
                            <div class="avatar" style="">
                                <img src="/janebook/images/user/3.jpg" alt=""><span class="name">怀左同学</span>
                            </div>
                        </a>
                    </div>
                </div>
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
        <div class="">
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
                <a href="#">
                    <img src="/janebook/images/common/Verification.png" alt="">
                </a>
            </div>
        </div>
    </div>
</footer>
</body>
<script>

        Date.prototype.Format = function (fmt) { //author: meizz
            var o = {
                "M+": this.getMonth() + 1, //月份
                "d+": this.getDate(), //日
                "h+": this.getHours(), //小时
                "m+": this.getMinutes(), //分
                "s+": this.getSeconds(), //秒
                "q+": Math.floor((this.getMonth() + 3) / 3), //季度
                "S": this.getMilliseconds() //毫秒
            };
            if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
            for (var k in o)
                if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            return fmt;
        }

        var author = null;
        var articleid = null
        var authorName = null;
        $.ajax({
            type:"GET",
            async:false,
            url:"/janebook/article/"+'${article}',
            success:function(data){
                author = data.authorName;
                articleid = data.id;
                $("#article-title").html(data.title);
                $("#article-time").html("最后编辑于 "+new Date(data.createTime).Format("yyyy-MM-dd hh:mm:ss"));
                $("#article-num").html("字数 "+data.wordNum);
                $("#article-browse").html("阅读 "+data.browse);
                $("#article-favor").html("收藏 "+data.hot);
                $("#article-reward").html("喜欢 "+data.reward);
                $("#like-num").html(data.reward);
                $(".note-text").html(data.content);
            }
        })

        $.ajax({
            type:"GET",
            url:"/janebook/user-msg/"+author,
            async:false,
            success:function(data){
                authorName = data.user.nickname;
                $(".avatar").attr('src', data.user.avatar);
                $("#nickname").html(data.user.nickname);
                $("#user-msg").html('写了 '+data.articleNum+' 篇文章 '+data.wordNum+ '字，被 '+data.follow+' 人关注，获得了 '+data.fans+' 个喜欢')
                $("#user-info").html(data.user.info);
                $("#article-author").html(data.user.nickname);
            }
        })

</script>
<script type="text/javascript">
    jQuery(document).ready(function(hide_topic) {
        $(".include-collection .collection:gt(6)").hide();
    });
    $(function(commom) {
        $(".note .post .comment-list .new-comment textarea").focus(function(event) {
            $(".note .post .comment-list .new-comment .write-function-block").slideDown();
        });
        $(".note .post .comment-list .new-comment .cancel").click(function(event) {
            $(".note .post .comment-list .new-comment .write-function-block").slideUp();
            $(".note .post .comment-list .new-comment .emoji-con").hide();
        });
        $(".note .post .comment-list").on('click', function(event) {
            var textarea = $(this).find("textarea")
            if (event.target && event.target.className == 'iconfont icon-smile') {
                // var _this = $(".note .post .comment-list .new-comment .emoji-con");
                var _this =$(event.target).parents(".write-function-block").next();
                //layer.msg($(_this).html());
                event.stopPropagation();
                if ($(_this).is(':hidden')) {

                    $(".emoji-con").hide();
                    $(_this).show();

                } else {
                    $(_this).hide();
                }
            }
        });

        $(document).click(function(e) {
            var emojibox = $(".emoji-con").find("*");
            var _this = $(e.target);
            //var flag = $(e.target).hasClass('.note .post .comment-list .new-comment .emoji-con');
            if (emojibox.children().index(_this) == -1) {
                $(".note .post .comment-list .new-comment .emoji-con").hide();

            }
            if(_this.html()=="回复"){
                commentSecOpen(e);
            }
        })
        // $("body").click(function(e) {
        // 	var _this = $(".note .post .comment-list .new-comment .emoji-con");
        // 	// var nav = $(".note .post .comment-list .new-comment .emoji-con .wEmoji-row");
        // 	// var list = $(".note .post .comment-list .new-comment .emoji-con .wEmoji-list");
        // 	// var container = $(".note .post .comment-list .new-comment .emoji-con .wEmoji-container");
        // 	// var pages = $(".note .post .comment-list .new-comment .emoji-con .wEmoji-pages");
        // 	// var item = $(".note .post .comment-list .new-comment .emoji-con .wEmoji-item");
        // 	// console.log($(e.target));
        // 	// console.log('\n);
        // 	// console.log($(_this).children());

        // 	// console.log(!$(e.target).is($(_this).children()));
        // 	// if(!$(e.target).is($(_this)) && !$(e.target).is($(nav)) && !$(e.target).is($(list)) && !$(e.target).is($(container)) && !$(e.target).is($(pages)) && !$(e.target).is($(pages)) ){
        // 	// 	$(_this).hide();
        // 	// }
        // 	if(!$(e.target).is($(_this))){
        // 		$(_this).hide();
        // 	}
        // });
    });
    $(function(carousel) {
        var slideon = setInterval(turnImgs, 3000);

        function fi(e) {
            $(e).addClass('fadein');
        };

        function fo(e) {
            $(e).removeClass('fadein');
        };
        var imgs = $(".carousel-inner").children();
        var imgs_len = $(".carousel-inner").children().length - 1;

        function turnImgs(dir) {
            var cur_index = $(".carousel-inner").children("div.fadein").index();
            // layer.msg(cur_index);
            // layer.msg(imgs.eq(cur_index).html());
            if (dir == 1) {
                if (cur_index == imgs_len) {
                    fo(imgs.eq(cur_index));
                    fi(imgs.eq(0));
                } else {
                    fo(imgs.eq(cur_index));
                    fi(imgs.eq(cur_index + 1));
                }
            } else {
                if (cur_index == 0) {
                    fo(imgs.eq(0));
                    fi(imgs.eq(imgs_len));
                } else {
                    fo(imgs.eq(cur_index));
                    fi(imgs.eq(cur_index - 1));
                }
            }
        };
        $(".carousel-control.right").click(function() {
            turnImgs(1);
        });
        $(".carousel-control.left").click(function() {
            turnImgs(0);
        });
        $("#recommend-carousel").hover(function() {
            clearInterval(slideon);
        }, function() {
            slideon = setInterval(turnImgs, 3000);
        });
    });
    $(function(to_top) {
        $(window).scroll(function() {
            if ($(this).scrollTop() < 500) {
                // $(".back-to-top").show();
                if ($(".side-tool").is(":visible")) {
                    $(".side-tool").hide();
                }
            } else {
                if ($(".side-tool").is(":hidden")) {
                    $(".side-tool").show();
                }

            }
        });
        $(".side-tool .back-to-top .function-btn").click(function(event) {
            $("body,html").animate({ scrollTop: 0 }, 900);
        });
    });
    $(function(nav_dropdown) {
        $(".navbar-collapse .navbar-nav .message").on('mouseenter', function(e) {
            e.preventDefault();
            $(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
        });

        $(".navbar-collapse .navbar-nav .message").on('mouseleave', function() {
            $(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();
        });
        $(".navbar-collapse .navbar-nav .message").on('click', function() {
            if ($(".navbar-collapse .navbar-nav .message .dropdown-menu").is(":hidden")) {
                $(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
            } else {
                $(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();
            }
        });

        $(".user-avatar .dropdown").mouseenter(function(e) {
            // $(".user-avatar .dropdown-toggle").dropdown('toggle');
            e.preventDefault();
            $(".user-avatar .dropdown-menu").show();
        });
        $(".user-avatar").on('mouseleave', function() {
            // console.log(2);
            $(".user-avatar .dropdown-menu").hide();
        });
        $(".user-avatar").on('click', function() {
            if ($(".user-avatar .dropdown-menu").is(":hidden")) {
                console.log(2);
                $(".user-avatar .dropdown-menu").show();
            } else {
                $(".user-avatar .dropdown-menu").hide();
            }
        });
    });
    $(function(modal) {
        $(".theme .theme-btn").on('click', function() {
            if ($(".theme .modal-popup").is(":hidden")) {
                $(".theme .modal-popup").fadeIn();
            } else {
                $(".theme .modal-popup").fadeOut();
            }
        });
    });
    $(function(message_link) {
        $("#message-dropdownMenu").on('click', function() {
            window.location.href = "/janebook/Notification.html";
        });
    });
    $(function(tooltip) {
        $("[data-toggle='tooltip']").tooltip({

        });
    });
    $(function(sort) {
        $(".note .post .comment-list .top .pull-right a").on('click', function() {
            $(this).siblings().removeClass('active');
            $(this).addClass('active');
        });
    });
    $(function(report) {
        $(".note .post .comment-list .comment-wrap").hover(function() {
            $(".note .post .comment-list .comment-wrap .report").show();
        }, function() {
            $(".note .post .comment-list .comment-wrap .report").hide();
        });
        $(".note .post .comment-list .sub-comment").hover(function() {
            var _this = $(this).children('.sub-tool-group').children('.report');
            // layer.msg(_this);
            $(_this).show();
        }, function() {
            var _this = $(this).children('.sub-tool-group').children('.report');
            $(_this).hide();
        });
    });


    $(function(follow) {
        $(".follow").on("mouseenter mouseleave click", function(event) {
            var _this = $(".follow");
            if ($(this).hasClass('following')) {

                if (event.type == 'mouseenter') {
                    $(_this).text("取消关注");
                } else if (event.type == 'mouseleave') {
                    $(_this).text("正在关注");
                } else {
                    $(_this).removeClass('following');
                    $(_this).text("+ 关注");
                }
            } else {
                if (event.type == 'click') {
                    $(_this).addClass('following');
                    $(_this).text("正在关注");
                }
            }
        });
    });
    $(function(show_topic) {
        $(".include-collection .more-collection").on("click", function() {
            $(this).hide();
            $(".include-collection .collection:gt(6)").show();
        });
    });
    $(function(thumup) {
        var thumupNum = 0;
        $(".note .post .comment-list .tool-group a:first-child").on('click', function() {
            var i = $(this).children('.icon-good');
            var span = $(this).children('span');
            if ($(i).hasClass('active')) {
                thumupNum--;
                // layer.msg(thumupNum);
                $(i).removeClass('active');
                $(span).html(thumupNum + '人赞');
            } else {
                thumupNum++;
                $(i).addClass('active');
                $(span).html(thumupNum + '人赞');
            }
        });
    });
    $(function(love) {
        var like_count = $("#like-num").html();
        $(".note .post .meta-bottom .btn-like").on('click', function() {
            var _count = $(this).children('.modal-wrap');
            // layer.msg(_count)
            if ($(this).hasClass('like-group-active')) {
                like_count--;
                $(this).removeClass('like-group-active');
                $(this).addClass('like-group');
                $(_count).html('<a>' + like_count + '</a>');
            } else {
                like_count++;
                $(this).addClass('like-group-active');
                $(this).removeClass('like-group');
                $(_count).html('<a>' + like_count + '</a>');
            }
        })
    });

    // document.querySelector("#submit").onclick=function(e){
    // 	var text ="";
    // 	// layer.msg(text);
    // 	for(var i=1 ;i <= 91; i++){
    // 		// text.innerhtml(i+".gif");
    // 		var tmp ='"'+ i +".gif"+'",';
    // 		text += tmp;
    // 	}
    // 	document.write(text);
    // 	// document.querySelector(".content").text('i')
    // }
</script>
<script type="text/javascript">


    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = ".";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        var strMin = date.getMinutes();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        if (strMin >= 0 && strMin <= 9) {
            strMin = "0" + strMin;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate +
            " " + date.getHours() + seperator2 + strMin;
        return currentdate;
    };
    floor_num = 1;
    var pageNum = 1;

    var outerWE = emoji({textbox:'#subText', emojibox:'.wrapper'});




    function emoji(parm) {
        var text = document.querySelector(parm.textbox);
        // var val = text.value;
        var we = new wantEmoji({
            wrapper: parm.emojibox,
            callback: function(emojiCode) {
                text.value += emojiCode;
            },
            autoInit: true
        });

        loadCommentFir();
        function loadCommentFir(){
            $.ajax({
                type:"GET",
                url:"/janebook/commentaryfirs/"+articleid+'/'+pageNum+'/'+'6',
                success:function(data){
                    var box = $("#comment-box");
                    $.each(data, function(index, obj){
                        var new_comment = '<div class="comment" id="comment-'+obj.id+'">' +
                            '<div>' +
                            '<div class="author">' +
                            '<a href="#" target="_blank" class="avatar">' +
                            '<img src="'+obj.reviewerId+'">' +
                            '</a>' +
                            '<div class="info">' +
                            '<a href="#" target="_blank" class="name fir-name">'+obj.reviewerName+'</a>' +
                            '<div class="meta">' +
                            '<span>' + floor_num + '楼 · ' + new Date(obj.reviewTime).Format("yyyy.MM.dd hh:mm") + '</span>' +
                            '</div>' +
                            '</div>' +
                            '</div>' +
                            '<div class="comment-wrap">' +
                            '<p>' + we.explain(obj.commentCont) + '</p>' +
                            '<div class="tool-group">' +
                            '<a class=""><i class="iconfont icon-good"></i> <span>0人赞</span></a>' +
                            '<a class=""><i class="iconfont icon-comments"></i> <span class="fir-reply">回复</span></a>' +
                            '<a class="report"><span>举报</span></a> <!---->' +
                            '</div>' +
                            '</div>' +
                            '</div><div class="sub-comment-list" id="sub-comment-list-'+obj.id+'"><div>' +
                            '</div>';
                        box.append(new_comment);
                        floor_num++;
                    })
                }
            })
        };
        loadCommentSec();
        function loadCommentSec(){
            $.ajax({
                type:"GET",
                url:"/janebook/commentarysecs/"+articleid+'/0/0',
                success:function(data){
                    $.each(data, function(n, obj){
                        var num = obj.beReviewerId;
                        var cont = $('#sub-comment-list-'+num);
                        var new_comment = '<div class="sub-comment">' +
                            '<p>' +
                            '<a class="sec-name" href="#" target="_blank">'+obj.reviewerName+'</a>：' +
                            we.explain(obj.commentCont)+
                            '</p>' +
                            '<div class="sub-tool-group">' +
                            '<span>2017.09.22 11:07</span> <a class="reply"><i class="iconfont icon-comments"></i> <span class="sec-reply">回复</span></a>' +
                            '<a class="report"><span>举报</span></a>' +
                            '<!---->' +
                            '</div>' +
                            '</div>';
                        cont.append(new_comment);
                    })
                }

            })
        }

        function publish_comment() {

            var val = $(parm.textbox).val().toString();
            var newVal = val.replace(/\n|\r\n/g, '<br/>');
            if (val.length >= 5 && val.trim().length != 0) {


                var new_comment = '<div class="comment" id="">' +
                    '<div>' +
                    '<div class="author">' +
                    '<a href="#" target="_blank" class="avatar">' +
                    '<img src="${userInfo.avatar}">' +
                    '</a>' +
                    '<div class="info">' +
                    '<a  href="#" target="_blank" class="name fir-name">${userInfo.nickname}</a>' +
                    '<div class="meta">' +
                    '<span>' + floor_num + '楼 · ' + getNowFormatDate() + '</span>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<div class="comment-wrap">' +
                    '<p>' + newVal + '</p>' +
                    '<div class="tool-group">' +
                    '<a class=""><i class="iconfont icon-good"></i> <span>0人赞</span></a>' +
                    '<a class=""><i class="iconfont icon-comments"></i> <span>回复</span></a>' +
                    '<a class="report"><span>举报</span></a> <!---->' +
                    '</div>' +
                    '</div>' +
                    '</div><div class="sub-comment-list"><div>' +
                    '</div>';
                $(".note .post .comment-list .normal-comment-list").append(new_comment);
                $(".note .post .comment-list .comment:last .comment-wrap p").html(we.explain(newVal));
                floor_num++;
                var thumupNum = 0;
                $(".note .post .comment-list .tool-group a:first-child").unbind();
                $(".note .post .comment-list .tool-group a:first-child").on('click', function() {
                    var i = $(this).children('.icon-good');
                    var span = $(this).children('span');
                    if ($(i).hasClass('active')) {
                        thumupNum--;
                        // layer.msg(thumupNum);
                        $(i).removeClass('active');
                        $(span).html(thumupNum + '人赞');
                    } else {
                        thumupNum++;
                        $(i).addClass('active');
                        $(span).html(thumupNum + '人赞');
                    }
                });
            } else {
                layer.msg("请输入大于五个字符XD");
            }
            return we;
        };



        $(window).keydown(function(event) {
            var keycode = event.which;
            if (keycode == 13 && event.ctrlKey) {
                firCommentSend();
            }
        });
        $(".new-comment .write-function-block #btn-send-fir").on('click', function(event) {
            firCommentSend();
        });
        layer.msg('${userInfo.userId}');

        function firCommentSend(){
            var reviewerName = '${userInfo.nickname}';
            var commentCont = $("#subText").val();
            var avatar = '${userInfo.avatar}';
            var reviewTime = new Date();
            if(reviewerName == ''){
                layer.msg("请先登录")
            }else{
                $.ajax({
                    type:"POST",
                    url:"/janebook/commentaryfir",
                    contentType:'application/json',
                    data:JSON.stringify({
                        reviewerName:reviewerName,
                        reviewerId:avatar,
                        commentCont:commentCont,
                        reviewTime:reviewTime,
                        articleId:articleid
                    }),
                    success:function(){
                        publish_comment();
                    }
                })
            }

        }

    };

    function emoji2(parm) {
        var text = document.querySelector(parm.textbox);
        // var val = text.value;
        var we = new wantEmoji({
            wrapper: parm.emojibox,
            callback: function(emojiCode) {
                text.value += emojiCode;
            },
            autoInit: true
        });

        function publish_comment2(event) {
            var val = $(parm.textbox).val().toString();
            var newVal =  "    "+val.replace(/\n|\r\n/g, '<br/>');
            if (newVal.length >= 5 && newVal.trim().length != 0) {


                var new_comment = '<div class="sub-comment">' +
                    '<p>' +
                    '<a class="sec-name" href="#" target="_blank">${userInfo.nickname}</a>：' +
                    '</p>' +
                    '<div class="sub-tool-group">' +
                    '<span>2017.09.22 11:07</span> <a class="reply"><i class="iconfont icon-comments"></i> <span class="sec-reply">回复</span></a>' +
                    '<a class="report"><span>举报</span></a>' +
                    '<!---->' +
                    '</div>' +
                    '</div>';

                var nowHtml = $(event.target).parents("#reply-box").prev().children(":last").before(new_comment);
                nowHtml.prev().find('p').append(we.explain(newVal));
                //$(".note .post .comment-list .normal-comment-list").append(new_comment);
                //$(".note .post .comment-list .comment:last .comment-wrap p").html(we.explain(newVal));
                // var thumupNum = 2;
                // $(".note .post .comment-list .tool-group a:first-child").unbind();
                // $(".note .post .comment-list .tool-group a:first-child").on('click', function() {
                //     var i = $(this).children('.icon-good');
                //     var span = $(this).children('span');
                //     if ($(i).hasClass('active')) {
                //         thumupNum--;
                //         // layer.msg(thumupNum);
                //         $(i).removeClass('active');
                //         $(span).html(thumupNum + '人赞');
                //     } else {
                //         thumupNum++;
                //         $(i).addClass('active');
                //         $(span).html(thumupNum + '人赞');
                //     }
                // });
            } else {
                layer.msg("请输入大于五个字符XD");
            }
        };



        $(".new-comment .write-function-block #btn-send-sec").on('click', function(event) {
            secCommentSend(event);
            publish_comment2(event);
        });

        function secCommentSend(event){
            var id = $(event.target).parents(".comment").attr('id');
            id = id.substring(id.lastIndexOf('-')+1);
            var cont = $("#subText2").val();
            var reviewTime = new Date();
            var reviewerName = '${userInfo.nickname}';
            $.ajax({
                type:"POST",
                url:"/janebook/commentarysec",
                contentType:'application/json',
                data:JSON.stringify({
                   beReviewerId:id,
                   reviewerName:reviewerName,
                   reviewTime:reviewTime,
                   commentCont:cont,
                   reviewerId:articleid
                }),
                success:function(){
                    //publish_comment2(event);
                }
            })
        }

    };



    function commentSecOpen(e) {
        // layer.msg(1)

        if($("#reply-box").length>0)
            $("#reply-box").remove();
        var cont = $(e.target).parents(".comment");
        cont.append('<div id="reply-box" style="display:none;">' +
            '<form class="new-comment">' +
            '<textarea placeholder="写下你的评论..." id="subText2"></textarea>' +
            '<div class="write-function-block sub">' +
            '<div class="emoji-modal-wrap">' +
            '<a class="emoji-btn"><i class="iconfont icon-smile" ></i></a>' +
            '</div>' +

            '<div class="hint" >Ctrl+Return 发表</div>' +
            '<a id="btn-send-sec" class="btn btn-send">发送</a>' +
            '<a class="cancel">取消</a>' +

            '</div>' +
            '<div class="emoji-con">' +
            '<div class="wrapper" id="wrapper2"></div>' +
            '<div class="content"></div>' +
            '</div>' +
            '</form>' +

            '<!-- <button id="submit">提交</button> -->' +
            '</div>');
        if($(e.target).hasClass("sec-reply")){
            var tn = $(e.target).parents(".sub-comment").find(".sec-name").html();
            $("#subText2").val("@"+tn+" ");
        }else{
            var tn = $(e.target).parents(".comment").find(".fir-name").html();
            $("#subText2").val("@"+tn+" ");
        }
        emoji2({textbox:'#subText2',
            emojibox:'#wrapper2'});
        $("#reply-box").fadeIn();
        $(".btn-send").click(function() {
            $("#reply-box").remove();
        });
    }


    // document.querySelector(".new-comment .write-function-block .btn-send").onclick = function(e){
    // 	var val = text.value;
    // 	document.querySelector(".content").innerHTML = we.explain(val);
    // };
</script>

</html>