package com.demo.controller;

import com.demo.bean.User;
import com.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author bubblechou
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 跳转到添加用户界面
     * @return
     */
    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "addUser";
    }


    /**
     * 添加用户并重定向
     * @param
     * @param user
     * @return
     */
    @RequestMapping("addUser")
    public String addUser(Model model,User user){
        userService.saveUser(user);
        return "redirect:/user/getAllUser";
    }


    /**
     * 查询全部用户
     * @param model
     * @return
     */
    @RequestMapping("getAllUser")
    public String getAllUser(Model model){
        List<User> user = userService.findAll();
        model.addAttribute("userList",user);
        return "allUser";
    }


    /**
     * 删除用户
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("delUser")
    public String removeUser(Model model,Integer id){
        model.addAttribute("user",userService.deleteUser(id));
        userService.deleteUser(id);
        return "redirect:/user/getAllUser";
    }


    /**
     * 跳转到更新用户页面
     */
    @RequestMapping("toUpdate")
    public String toUpdate(@RequestParam(value = "id")Integer id,Model model){
        model.addAttribute("user",userService.findUserById(id));
        return "updateUser";
    }

    /**
     * 更新用户
     * @param
     * @return
     */
    @RequestMapping(value = "updateUser",method = RequestMethod.POST)
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:/user/getAllUser";
    }
}
