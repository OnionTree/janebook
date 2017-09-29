package com.xycode.janebook.controller;


import com.xycode.janebook.model.TArticle;
import com.xycode.janebook.model.TUser;
import com.xycode.janebook.service.ArticleService;
import com.xycode.janebook.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.logging.Logger;


@Controller
public class StartController {
    private Logger log_ = Logger.getLogger(StartController.class.getName());

    @Autowired
    ArticleService articleService;
    @Autowired
    UserService userService;
    //登陆后的主页
    @RequestMapping("/MainHome-login")
    public String homeLogined(){
        return "MainHome-login";
    }
    //用户注册
    @RequestMapping("/Userregister")
    public String Userregister(TUser tuser, HttpServletRequest request) {

        System.out.println("User:" + tuser.getUserId());
        System.out.println("Password:" + tuser.getPassword());
        tuser.setRoleId(1);
        userService.addUser(tuser);
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public ModelAndView indexPage() {
        log_.info("indexPage invoke ....");
        List<TArticle> at = articleService.getHomeArticle();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("MainHome");
        mv.addObject("TArticle", at);
        return mv;
    }

    //用户登录
    @RequestMapping("/loginer")
    public ModelAndView login(TUser tuser, HttpServletRequest request) {
        log_.info("loginer Page.");
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(tuser.getUserId(), tuser.getPassword());
        System.out.println("User:" + tuser.getUserId());
        System.out.println("Password:" + tuser.getPassword());
        ModelAndView mv = new ModelAndView();
        try {
            //调用subject.login(token)进行登录，会自动委托给securityManager,调用之前
            subject.login(token);//会跳到我们自定义的realm中
            request.getSession().setAttribute("tuser", tuser);
            List<TArticle> at = articleService.getHomeArticle();
            mv.setViewName("MainHome-login");
            mv.addObject("TArticle", at);
            return mv;

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "用户名或密码错误");
            mv.setViewName("login");
            return mv;
        }
    }

    @RequestMapping("/logout")
    public String logout() {

        Subject currentUser = SecurityUtils.getSubject();
        currentUser.logout();
        return "redirect:/index";
    }

    @RequestMapping("/login")
    public String LoginPage() {
        log_.info("login Page.");
        return "login";
    }



    @RequestMapping("/notifi-chats")
    public String nChats() {
        return "notifi-chats";
    }

    @RequestMapping("/notifi-else")
    public String nElse() {
        return "notifi-else";
    }

    @RequestMapping("/Notification")
    public String Notification() {
        return "Notification";
    }

    @RequestMapping("/notifi-like")
    public String nLike() {
        return "notifi-like";
    }

    @RequestMapping("/notifi-follow")
    public String nFollow() {
        return "notifi-follow";
    }

    @RequestMapping("/mycollection")
    public String mycollectionPage() {
        return "mycollection";
    }

    @RequestMapping("/myfavourart")
    public String myfavourartPage() {
        return "myfavourart";
    }

    @RequestMapping("/mytopic")
    public String mytopicPage() {
        return "mytopic";
    }

    @RequestMapping("/mynewtopic")
    public String mynewtopicPage() {
        return "mynewtopic";
    }

    @RequestMapping("/myfollow")
    public String myfollowPage() {
        return "myfollow";
    }

    @RequestMapping("/mySettingaccount")
    public String mySettingaccountPage() {
        return "mySettingaccount";
    }
    @RequestMapping("/myhomepage")
    public String myhomepagePage() {
        return "myhomepage";
    }

    @RequestMapping("/mySettingblanklist")
    public String mySettingblanklistPage() {
        return "mySettingblanklist";
    }

    @RequestMapping("/mySettingpre")
    public String mySettingprePage() {
        return "mySettingpre";
    }


    @RequestMapping("/mySetting")
    public String mySettingPage() {
        return "mySetting";
    }

    @RequestMapping("/hottopic")
    public String hottopicPage() {
        return "hottopic";
    }

    @RequestMapping("/register")
    public String registerPage() {
        return "register";
    }

    @RequestMapping("/admin-main")
    public String toAdminMain() {
        return "admin-main";
    }

    @RequestMapping("/admin-article")
    public String toAdminArticle() {
        return "admin-article";
    }

    @RequestMapping("/admin-user")
    public String toAdminUser() {
        return "admin-user";
    }

    @RequestMapping("/admin-search")
    public String toAdminSearch() {
        return "admin-search";
    }

    @RequestMapping("/admin-classify")
    public String toAdminClassify(Model model) {
        model.addAttribute("name", "Jsper");
        System.out.println("helo");
        return "admin-classify";
    }

    @RequestMapping("/notification")
    public String toNotification() {
        return "Notification";
    }


    @RequestMapping("/editor")
    public String hello() {
        System.out.println("helo2");

        return "editor";
    }

    @RequestMapping("/admin")
    public String toAdmin(Model model) {
        model.addAttribute("name", "Jsp-2");
        return "admin";
    }


}
