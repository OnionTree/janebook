package com.xycode.janebook.controller;


import com.xycode.janebook.model.Image;
import com.xycode.janebook.service.ResourceUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@RestController
public class ResourcesUploadController {

    @Autowired
    ResourceUploadService resourceUploadService;

    @PostMapping("/upload")
    public String upload(@RequestParam("file")MultipartFile file, HttpServletRequest request){


        return resourceUploadService.upload(file, "/JBookResource/image/", "http://192.168.231.136:8080/image/");
    }


    @PostMapping("/multiUpload")
    public Image multiUpload(HttpServletRequest request){
        return  resourceUploadService.multiUpload(request, "files", "http://120.78.147.255/img/","/root/image/");
//        return  resourceUploadService.multiUpload(request, "files", "file:///D:/Desktop/img/","D:\\Desktop\\img\\");

    }

}
