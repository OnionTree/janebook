package com.xycode.janebook.controller;



import com.fasterxml.jackson.databind.ObjectMapper;
import com.xycode.janebook.model.TArticle;
import com.xycode.janebook.model.TClassify;
import com.xycode.janebook.model.TUser;
import com.xycode.janebook.service.ArticleService;
import com.xycode.janebook.service.ClassifyService;
import com.xycode.janebook.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;


@Controller
public class StartController {
    private Logger log_ = Logger.getLogger(StartController.class.getName());

    @Autowired
    ArticleService articleService;
    @Autowired
    UserService userService;
    @Autowired
    ClassifyService classifyService;


    @RequestMapping("/editor")
    public String toEditor(){
        return "editor";
    }

    //文章跳转
    @RequestMapping("article/show/{id}")
    public String toArticle(@PathVariable Integer id, Model model){
        model.addAttribute("article", id);
        return "article";
    }
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
    public ModelAndView indexPage(HttpServletRequest request) {
        log_.info("indexPage invoke ....");
        List<TArticle> at = articleService.getHomeArticle();
        List<TUser> user = userService.getrecTuer();
        ModelAndView mv = new ModelAndView();
        if(request.getSession().getAttribute("tuser")!=null){
            mv.setViewName("MainHome-login");
        }else{
            mv.setViewName("MainHome");
        }
        mv.addObject("TArticle", at);
        mv.addObject("TUser",user);
        return mv;
    }

    @RequestMapping("/change")
    @ResponseBody
    public List<TUser> changPage() {
        log_.info("indexPage invoke ....");
        List<TUser> user = userService.getrecTuer();
        return user;
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
            List<TUser> user = userService.getrecTuer();
            TUser userInfo = userService.getUserByUserName(tuser.getUserId());
            request.getSession().setAttribute("userInfo", userInfo);
            mv.setViewName("MainHome-login");
            mv.addObject("TArticle", at);
            mv.addObject("TUser",user);
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
    public ModelAndView mytopicPage(int id) {
        List<TArticle> tArticles = articleService.getallArticle(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("mytopic");
        mv.addObject("TArticle",tArticles);

        mv.addObject("toptitle", tArticles.get(0).getTag());
        System.out.println(tArticles);
        return mv;
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
    public ModelAndView myhomepagePage(String name) {

        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        name = user.getUserId();

        List<TArticle> tArticles = articleService.getmenberArticle(name);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("myhomepage");
        mv.addObject("TArticle",tArticles);
        mv.addObject("topname", tArticles.get(0).getAuthorName());
        mv.addObject("UserInfo",userService.selectUserMsg(name));
        mv.addObject("info",userService.getUserByUserName(name).getInfo());
        System.out.println(tArticles);
        return mv;
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
    public ModelAndView hottopicPage() {

        List<TClassify> tClassify = classifyService.gettClassifies();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("hottopic");
        mv.addObject("TClassify",tClassify);
        System.out.println(tClassify);
        return mv;
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



    @RequestMapping("/admin")
    public String toAdmin(Model model) {
        model.addAttribute("name", "Jsp-2");
        return "admin";
    }


}
