package com.xycode.janebook.realm;


import com.xycode.janebook.model.TUser;
import com.xycode.janebook.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class MyRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;

    //为当前登录成功的用户授予权限和角色，已经登录成功了。
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        System.out.println("doGetAuthorizationInfo");
        TUser tuser=(TUser) principals.getPrimaryPrincipal();
        String username=tuser.getUserId();
        System.out.println(username);
        SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
//        authorizationInfo.setRoles(userService.getRoles(username));
//        authorizationInfo.setStringPermissions(userService.getPermissions(username));
//        System.out.println(userService.getPermissions(username));
        return authorizationInfo;
    }
    //验证当前登录的用户，获取认证信息。
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.out.println("doGetAuthenticationInfo");
        String username=(String) token.getPrincipal().toString();//获取用户名
        TUser tuser=userService.getUserByUserName(username);
        if(tuser!=null){
            AuthenticationInfo authcInfo =new SimpleAuthenticationInfo(tuser,tuser.getPassword(),getName());
            //authcInfo.setCredentialsSalt(ByteSource.Util.bytes(username.getBytes()));
            return authcInfo;
        }else{
            return null;
        }
    }
}
