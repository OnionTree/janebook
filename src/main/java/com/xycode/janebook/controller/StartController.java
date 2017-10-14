package com.xycode.janebook.controller;



import com.fasterxml.jackson.databind.ObjectMapper;
import com.xycode.janebook.model.*;
import com.xycode.janebook.service.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
    @Autowired
    CollectionService collectionService;
    @Autowired
    FavorService favorService;


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
        log_.info("Size=="+at.size());
        RegExp re = new RegExp();
        for(int k=0;k<at.size();k++){
            String str = at.get(k).getContent();
            log_.info("str==="+str);
            String temp = re.getTextFromHtml(str)+"...";
            log_.info("temp==="+temp);
            at.get(k).setContent(temp);
        }

        List<TUser> user = userService.getHomeUser();
        List<TUser> uu = userService.getUser();
        ModelAndView mv = new ModelAndView();
        if(request.getSession().getAttribute("tuser")!=null){
            mv.setViewName("MainHome-login");
        }else{
            mv.setViewName("MainHome");
        }
        List<TClassify> tClassify = classifyService.gettClassifies();
        mv.addObject("TClassify",tClassify);
        mv.addObject("TArticle", at);
        mv.addObject("TUser",user);
        mv.addObject("uu",uu);
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
            log_.info("Size=="+at.size());
            RegExp re = new RegExp();
            for(int k=0;k<at.size();k++){
                String str = at.get(k).getContent();
                String temp = re.getTextFromHtml(str)+"...";
                log_.info("temp==="+temp);
                at.get(k).setContent(temp);
            }


            List<TUser> user = userService.getrecTuer();
            List<TUser> uu = userService.getUser();
            TUser userInfo = userService.getUserByUserName(tuser.getUserId());
            request.getSession().setAttribute("userInfo", userInfo);
            mv.setViewName("MainHome-login");
            mv.addObject("TArticle", at);
            mv.addObject("TUser",user);
            mv.addObject("uu",uu);
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
    public ModelAndView mycollectionPage(String name) {
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        name = user.getUserId();
        ModelAndView mv = new ModelAndView();

        List<TCollection> tCollections = collectionService.getallcollections(name);
        List<TArticle> Articleslist = new ArrayList<TArticle>();
        List<TUser> tUsers = new ArrayList<TUser>();
        Map map=new HashMap();

        int lenght =tCollections.size();
        System.out.println(lenght);
        for(int i=0;i<lenght;i++){
            System.out.println(tCollections.get(i).getArticleId());
            int index=Integer.parseInt(tCollections.get(i).getArticleId());
            TArticle tArticle = articleService.getArticle(index);

            TUser tu = userService.getUserByUserName(tCollections.get(i).getUserId());
            Articleslist.add(tArticle);
            tUsers.add(tu);


        }
        log_.info("Size=="+Articleslist.size());
        RegExp re = new RegExp();
        for(int k=0;k<Articleslist.size();k++){
            String str = Articleslist.get(k).getContent();
            String temp = re.getTextFromHtml(str)+"...";
            log_.info("temp==="+temp);
            Articleslist.get(k).setContent(temp);
            TUser userTemp = userService.getUserByUserName(Articleslist.get(k).getAuthorName());
            map.put(userTemp.getUserId(),userTemp.getAvatar());
        }

        log_.info("collcetion Size=="+map.size());
        // System.out.println("here");
        // System.out.println(Articlseslist.size());
        mv.addObject("TCollection",tCollections);
        mv.addObject("Articleslist",Articleslist);
        mv.addObject("user",userService.getUserByUserName(name));
        mv.addObject("tUsers",tUsers);
        mv.addObject("map",map);
        mv.setViewName("mycollection");
        return mv;
    }

    @RequestMapping("/myfavourart")
    public ModelAndView myfavourartPage(String name) {
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        name = user.getUserId();
        ModelAndView mv = new ModelAndView();
        List<TFavor> tFavors = favorService.getallfavor(name);
        List<TArticle> Articleslist = new ArrayList<TArticle>();
        int lenght =tFavors.size();
        //tCollections.get(0).getArticleId();
        System.out.println(lenght);
        for(int i=0;i<lenght;i++){
            System.out.println(tFavors.get(i).getArticleId());
            int index=tFavors.get(i).getArticleId();
            TArticle tArticle = articleService.getArticle(index);
            Articleslist.add(tArticle);

        }
        log_.info("Size=="+Articleslist.size());
        RegExp re = new RegExp();
        for(int k=0;k<Articleslist.size();k++){
            String str = Articleslist.get(k).getContent();
            String temp = re.getTextFromHtml(str)+"...";
            log_.info("temp==="+temp);
            Articleslist.get(k).setContent(temp);
        }
        mv.addObject("topname", tFavors.get(0).getUserId());
        mv.addObject("TFavor",tFavors);
        mv.addObject("Articleslist",Articleslist);
        mv.addObject("user",userService.getUserByUserName(name));
        mv.addObject("UserInfo",userService.selectUserMsg(name));
        List<TClassify> tClassify = classifyService.getClassify(name);
        mv.addObject("TClassify",tClassify);
        mv.setViewName("myfavourart");
        return mv;
    }

    @RequestMapping("/mytopic")
    public ModelAndView mytopicPage(int id) {
        List<TArticle> tArticles = articleService.getallArticle(id);
        Map map=new HashMap();
        RegExp re = new RegExp();
        for(int k=0;k<tArticles.size();k++){
            String str = tArticles.get(k).getContent();
            String temp = re.getTextFromHtml(str)+"...";
            log_.info("temp==="+temp);
            tArticles.get(k).setContent(temp);
            TUser userTemp = userService.getUserByUserName(tArticles.get(k).getAuthorName());

            map.put(userTemp.getUserId(),userTemp.getAvatar());
        }
        log_.info("Map Size=="+map.size());
        ModelAndView mv = new ModelAndView();
        mv.setViewName("mytopic");
        //文章的图片
        //管理员图片
        mv.addObject("img",userService.getUserByUserName(classifyService.selectByPrimaryKey(id).getClassifyAdmin()).getAvatar());
        mv.addObject("TArticle",tArticles);
        mv.addObject("classify",classifyService.selectByPrimaryKey(id));
        mv.addObject("map",map);
        return mv;
    }
    @RequestMapping("/mynewtopic")
    public String mynewtopicPage() {
        return "mynewtopic";
    }

    @RequestMapping("/myfollow")
    public ModelAndView myfollowPage() {
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        String name = user.getUserId();
        List<TClassify> classifies = classifyService.getUserClassifys(name);
        for(int j=0;j<classifies.size();j++){
            System.out.println("myfollow ConTroller+++++++"+classifies.get(j).getClassifyName());
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("myfollow");
        /*mv.addObject("topname", tArticles.get(0).getAuthorName());*/
        mv.addObject("UserInfo",userService.selectUserMsg(name));
        mv.addObject("user",userService.getUserByUserName(name));
        List<TClassify> tClassify = classifyService.getClassify(name);
        mv.addObject("TClassify",tClassify);
        mv.addObject("classifies",classifies);
        return mv;
    }

    @RequestMapping("/mySettingaccount")
    public String mySettingaccountPage() {
        return "mySettingaccount";
    }

    //没登录的情况
    @RequestMapping("/myhomepage")
    public ModelAndView myhomepagePage(String name) {

        List<TArticle> tArticles = articleService.getmenberArticle(name);
        log_.info("Size=="+tArticles.size());
        RegExp re = new RegExp();
        for(int k=0;k<tArticles.size();k++){
            String str = tArticles.get(k).getContent();
            String temp = re.getTextFromHtml(str)+"...";
            log_.info("temp==="+temp);
            tArticles.get(k).setContent(temp);
        }

        ModelAndView mv = new ModelAndView();

        mv.setViewName("myhomepage");
        mv.addObject("TArticle",tArticles);
        /*mv.addObject("topname", tArticles.get(0).getAuthorName());*/
        mv.addObject("UserInfo",userService.selectUserMsg(name));
        mv.addObject("user",userService.getUserByUserName(name));
        List<TClassify> tClassify = classifyService.getClassify(name);
        mv.addObject("TClassify",tClassify);
        return mv;
    }

    //文章跳转
    @RequestMapping("article/show/{id}")
    public ModelAndView toArticle(@PathVariable Integer id, Model model){


        TArticle tArticles = articleService.getArticle(id);
        model.addAttribute("article", id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("article");
        mv.addObject("user",userService.getUserByUserName(tArticles.getAuthorName()));
        return mv;
    }

    @RequestMapping("/personpage")
    public ModelAndView personpage(String name) {
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        name = user.getUserId();

        List<TArticle> tArticles = articleService.getmenberArticle(name);
        log_.info("Size=="+tArticles.size());
        RegExp re = new RegExp();
        for(int k=0;k<tArticles.size();k++){
            String str = tArticles.get(k).getContent();
            String temp = re.getTextFromHtml(str)+"...";
            log_.info("temp==="+temp);
            tArticles.get(k).setContent(temp);
        }

        ModelAndView mv = new ModelAndView();

        mv.setViewName("myhomepage");
        mv.addObject("TArticle",tArticles);
        /*mv.addObject("topname", tArticles.get(0).getAuthorName());*/
        mv.addObject("UserInfo",userService.selectUserMsg(name));
        mv.addObject("user",userService.getUserByUserName(name));
        List<TClassify> tClassify = classifyService.getClassify(name);
        mv.addObject("TClassify",tClassify);

        return mv;
    }

    @RequestMapping("/editor")
    public ModelAndView toEditor(String name){
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        name = user.getUserId();
        List<TArticle> tArticles = articleService.getmenberArticle(name);
        ModelAndView mv = new ModelAndView();
        mv.addObject("TArticle",tArticles);
        mv.setViewName("editor");
        return mv;
    }

    @RequestMapping("/mySettingblanklist")
    public String mySettingblanklistPage() {
        return "mySettingblanklist";
    }

    @RequestMapping("/mySettingpre")
    public ModelAndView mySettingprePage() {
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        String name = user.getUserId();
        ModelAndView mv = new ModelAndView();
        mv.addObject("user",userService.getUserByUserName(name));
        mv.setViewName("mySettingpre");
        return mv;

    }

    @RequestMapping("/updateInfo")
    public String updateInfo(@RequestParam("email")String em,@RequestParam("neckname")String nn) {
        System.out.println("email=="+em);
        System.out.println("neckname=="+nn);
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        user.setNickname(nn);
        user.setEmail(em);
        userService.updateUser(user);
        return "mySetting";
    }

    @RequestMapping("/mySetting")
    public ModelAndView mySettingPage() {
        TUser user = (TUser) SecurityUtils.getSubject().getPrincipal();
        System.out.println( "getPrincipal............"+user.getUserId());
        String name = user.getUserId();
        ModelAndView mv = new ModelAndView();
        mv.addObject("user",userService.getUserByUserName(name));
        mv.setViewName("mySetting");
        return mv;
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
