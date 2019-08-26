package com.wenJianGuanLi;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class wenJianShangChuan {
    public String wenJianShangChuan(MultipartFile file){
        String filePath = "E:\\image";// 保存图片的路径，图片上传成功后，将路径保存到数据库
        String originalFilename = file.getOriginalFilename();// 获取原始图片的扩展名
        String newFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFilename;// 生成文件新的名字
        File targetFile = new File(filePath, newFileName);// 封装上传文件位置的全路径
        try {
            file.transferTo(targetFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
      return newFileName;
    }
}
