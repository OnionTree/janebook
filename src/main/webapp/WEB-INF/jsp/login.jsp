<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8" />
	    <title>登陆 - 捡书</title>
	    <link rel="stylesheet" href="css/loginstyle.css" />
	    <link rel="stylesheet" href="./css/iconfont.css">
	</head>
	
	<body class="no-padding reader-black-font" lang="zh-CN">
	    <div class="sign">
	    <div class="logo"> 
	    	<a href="http://www.jianshu.com/"><img src="img/logo.png" width="122" height="62" alt="logo"></a>
	    </div>
      
       <div class="main">
           <h4 class="title">
               <div class="normal-title">
          		    <a class="active" href="">登录</a>
          	    	<b>·</b>
          	    	<a id="js-sign-up-btn" class href="">注册</a>
          	  </div>
          </h4>
          <div class="js-sign-in-container">
          	  <form id="new_session" action="/sessions" accept-charset="UTF-8" method="post">
          	      <input name="utf8" type="hidden" value="✓">
          		  <input type="hidden" name="authenticity_token" value="pQ4UbyrNYwI1UMpBZp5w2AOPyJLFdJ6IGftT/1ho5TZo4QA8ikCSVUZNcrXRKsGyk9MB0e6QPHpT10Jqym5jDw==">
          		
          	   	  <!-- 正常登录登录名输入框 -->
          		  <div class="input-prepend restyle js-normal">
          		      <input placeholder="手机号或邮箱" type="text" name="session[email_or_mobile_number]" id="session_email_or_mobile_number">
          			  <i class="iconfont icon-yonghu1"></i>
          		  </div>
          		
          		  <!-- 海外登录登录名输入框 -->
          		  <div class="input-prepend">
  			          <input placeholder="密码" type="password" name="session[password]" id="session_password" />
  			          <i class="iconfont icon-suo"></i>
          		  </div>
          	  	  <input value="false" type="hidden" name="session[oversea]" id="session_oversea" />
          		  <div class="remember-btn">
                       <input type="checkbox" value="true" checked="checked" 
                  	       name="session[remember_me]" id="session_remember_me" />
                  <span>记住我</span>
                  </div>
                  <div class="forget-btn">
                      <a>忘记密码?</a>             
                  </div> 
                  <input type="submit" name="commit" value="登录" 
                      class="sign-in-button" data-disable-with="登录" />
          	  </form>
          	
          	<!-- 更多登录方式 -->
          	<div class="more-sign">
                <h6>	  	
          			社交账号登录		 
                </h6>
          		<ul>
          		    <li><a class="weibo"  target="_blank" href=""><i class="iconfont icon-sina"></i></a></li>
          		  	<li><a class="weixin" target="_blank" href=""><i class="iconfont icon-icon-"></i></a></li>
          		  	<li><a class="qq" target="_blank" href=""><i class="iconfont icon-qq"></i></a></li>
          		</ul>
            </div>
         </div>
      </div>
		</div>
    </body>
</html>
