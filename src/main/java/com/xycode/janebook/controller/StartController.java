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


    @RequestMapping("/")
    public ModelAndView indexPage() {
        log_.info("indexPage invoke ....");
        List<TArticle> at = articleService.getHomeArticle();
        System.out.println("at.size---------------"+at.size());
        ModelAndView mv = new ModelAndView();
        mv.setViewName("MainHome");
        mv.addObject("TArticle",at);
        return mv;
    }

    //用户登录
    @RequestMapping("/login")
    public String login(TUser tuser, HttpServletRequest request) {

        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(tuser.getUserId(), tuser.getPassword());
        System.out.println("Controller"+tuser.getUserId());
        System.out.println("Controller"+tuser.getPassword());
        try {
            //调用subject.login(token)进行登录，会自动委托给securityManager,调用之前
            subject.login(token);//会跳到我们自定义的realm中
            request.getSession().setAttribute("tuser", tuser);
            if(tuser.getUserId().equals("admin")){
                return "/hello";
            }
            else{
                return "/MainHome-login";
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.getSession().setAttribute("tuser", tuser);
            request.setAttribute("error", "用户名或密码错误");
            return "/login";
        }
    }


    @RequestMapping("/admin-main")
    public String toAdminMain(){
        return "admin-main";
    }

    @RequestMapping("/admin-article")
    public String toAdminArticle(){
        return "admin-article";
    }

    @RequestMapping("/admin-user")
    public String toAdminUser(){
        return "admin-user";
    }

    @RequestMapping("/admin-search")
    public String toAdminSearch(){
        return "admin-search";
    }

    @RequestMapping("/admin-classify")
    public String toAdminClassify(Model model){
        model.addAttribute("name", "Jsper");
        System.out.println("helo");
        return "admin-classify";
    }

    @RequestMapping("/notification")
    public String toNotification(){
        return "Notification";
    }



    @RequestMapping("/editor")
    public String hello(){
        System.out.println("helo2");

        return "editor";
    }

    @RequestMapping("/admin")
    public String toAdmin(Model model){
        model.addAttribute("name", "Jsp-2");
        return "admin";
    }


}
