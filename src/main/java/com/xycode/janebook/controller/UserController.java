package com.xycode.janebook.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xycode.janebook.model.Msg;
import com.xycode.janebook.model.TUser;
import com.xycode.janebook.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@RestController
public class UserController {

    @Autowired
    UserService userService;



    //我的主页
    //传的值为用户ID
    @GetMapping("/user/gethomePage")
    @ResponseBody
    public String gethomePage(@RequestParam("id")int id) {


        return null;
    }

    @GetMapping("/user/getUser")
    @ResponseBody
    public Msg getUser(@RequestParam("page")int page, @RequestParam("limit")int limit) {

        PageHelper.startPage(page, limit);
        List<TUser> user = userService.getUserlist();
        PageInfo pager = new PageInfo(user, 10);
        int count = Integer.parseInt(String.valueOf(pager.getTotal()));

        Msg result = new Msg();
        result.setCode(0);

        result.setCount(count);
        result.setMsg("");
        result.setData(user);

        return result;
    }

    @GetMapping("/users/{pagenum}/{pagesize}")
    public Map<String, Object> getUsers(@PathVariable  Integer pagenum, @PathVariable  Integer pagesize){
        return userService.getUsers(pagenum, pagesize);
    }

    @GetMapping("/users/{like}")
    public Map<String, Object> getUsers(@PathVariable String like){
        return userService.getUsers(like);
    }

    @GetMapping("/user/{username}")
    public TUser getUserByUserName(@PathVariable String username){
        return userService.getUserByUserName(username);
    }

    @DeleteMapping("/user/{username}")
    public String delUser(@PathVariable String username){
        return userService.delUser(username);
    }

    @PostMapping("/user")
    public String addUser(@RequestBody TUser tUser){
        return userService.addUser(tUser);
    }

    @PutMapping("/user")
    public String updateUser(@RequestBody TUser tUser) {
            return userService.updateUser(tUser);
    }

    @GetMapping("/user-msg/{userId}")
    public Map getUserMsg(@PathVariable String userId){
        return userService.selectUserMsg(userId);
    }
}
