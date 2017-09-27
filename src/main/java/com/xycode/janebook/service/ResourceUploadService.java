package com.xycode.janebook.service;

import com.xycode.janebook.model.Image;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Service
public class ResourceUploadService {

    public String upload(MultipartFile file, String dir, String hostName){
        File sDir = new File(dir);
        if(!sDir.exists()){
            sDir.mkdir();
        }else{
            if(!sDir.isDirectory()){
                sDir.delete();
                sDir.mkdir();
            }
        }
        String res = null;
        if(!file.isEmpty()){
            String oName = file.getOriginalFilename();
            String nName = System.currentTimeMillis()+"_"+oName;
            try {
                BufferedInputStream bis = new BufferedInputStream(file.getInputStream());
                BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(new File(dir+nName)));
                byte[] bytes = new byte[1024];

                int len = 0;
                while((len = bis.read(bytes))!=-1) {
                    bos.write(bytes, 0, len);
                    bos.flush();
                }

                bos.close();
                res = hostName + nName;
            } catch (FileNotFoundException e) {
                res = "failed";
                e.printStackTrace();
            }catch (IOException e){
                res = "failed";
                e.printStackTrace();
            }finally {
                return res;
            }
        }
        return "empty file!";
    }


    public Image multiUpload(HttpServletRequest request, String varName,String hostName, String dir){
        File sDir = new File(dir);
        if(!sDir.exists()){
            sDir.mkdir();
        }else{
            if(!sDir.isDirectory()){
                sDir.delete();
                sDir.mkdir();
            }
        }
        int errno = 0;
        List<MultipartFile> files = ((MultipartHttpServletRequest)request).getFiles(varName);
        BufferedOutputStream bos = null;
        MultipartFile file = null;
        List<String> data = new ArrayList<String>();
        Image image = new Image();
        for(int i=0; i<files.size(); i++){
            file = files.get(i);
            if(!file.isEmpty()){
                String oName = file.getOriginalFilename();
                String nName = System.currentTimeMillis()+"_"+oName;
                try {
                    String  imgUrl = hostName+nName;
                    bos = new BufferedOutputStream(new FileOutputStream(new File(dir+nName)));
                    bos.write(file.getBytes());
                    bos.flush();
                    bos.close();
                    data.add(imgUrl);
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    errno++;
                } catch (IOException e) {
                    e.printStackTrace();
                    errno++;
                }finally {
                    try {
                        bos.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }else{
                return new Image();
            }
        }
        image.setErrno(errno);
        image.setData(data);
        return image;

    }
}
