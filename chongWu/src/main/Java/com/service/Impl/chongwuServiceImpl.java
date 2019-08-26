package com.service.Impl;

import com.dao.chongwu;
import com.entity.*;
import com.service.chongwuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class chongwuServiceImpl implements chongwuService {
    @Autowired
    private chongwu chongwu;
    @Override
    public userdetail selectbyname(String name) {
       return chongwu.selectbyname(name);
    }
    public userdetail selectbynameandpas(String name,String password){
       return chongwu.selectbynameandpas(name,password);
    }
    public int charu( userdetail userdetail){
//        String filePath = "F:\\upload";// 保存图片的路径，图片上传成功后，将路径保存到数据库
//        String originalFilename = file.getOriginalFilename();// 获取原始图片的扩展名
//        String newFileName = UUID.randomUUID() + originalFilename;// 生成文件新的名字
//        File targetFile = new File(filePath, newFileName);// 封装上传文件位置的全路径
//        try {
//            file.transferTo(targetFile);
//        }catch (IOException e){
//            e.printStackTrace();
//        }
//        userdetail.setPimage(newFileName);
        return chongwu.charu(userdetail);
    }
    public int update(userdetail userdetail){
        return chongwu.update(userdetail);
    }
    public int insert1(petJiYang petJiYang){
        return chongwu.insert1(petJiYang);
    }
    public List<petJiYang> list(){
        List<petJiYang> list;
       list=chongwu.list();
       return list;
    }
    public int insert2(petShouYang petShouYang){
        //System.out.println(petShouYang.getPetCateGory());
        return chongwu.insert2(petShouYang);
    }
    public List<petJiYang> selectShouYang(String name){
        return chongwu.selectShouYang(name);
    }
    public List<xuYuanQiang> xuYuangQiang(){
        return chongwu.xuYuangQiang();
    }
    public int xuYuanQiangChaRu(xuYuanQiang xuYuanQiang){
        return chongwu.xuYuanQiangChaRu(xuYuanQiang);
    }
    public int jiaoLiu(jiaoLiu jiaoLiu) {
        return chongwu.jiaoLiu(jiaoLiu);
    }
    public List<jiaoLiu> listJiaoLiu(){
        return chongwu.listJiaoLiu();
    }
     public userdetail selectPimage(String name){
        return chongwu.selectPimage(name);
     }
     public money selectMoney(String name){
        return chongwu.selectMoney(name);

     }
     public int insertMoney(money money){
        return chongwu.insertMoney(money);
     }
     public int insertWenJian(wenjian wenjian){
        return chongwu.insertWenJian(wenjian);
     }
     public wenjian selectWenJian(String name){
        return chongwu.selectWenJian(name);
     }
     public List<wenjian> selectDuoWenJian(){
        return chongwu.selectDuoWenJian();
     }
     public List<money> selectM(String name){
        return chongwu.selectM(name);
     }
     public  petShouYang shouyangchaxun(petShouYang petShouYang){
        return chongwu.shouyangchaxun(petShouYang);
     }
     public int insertSell(shoumaixinxi shoumaixinxi){
        return chongwu.insertSell(shoumaixinxi);
     }
     public List<shoumaixinxi> shoumaixinxilist(){
        return chongwu.shoumaixinxilist();
     }
     public shoumaixinxi selectShouMaiById(Integer id){
        return chongwu.selectShouMaiById(id);
     }
     public int updateDianJiLiang(shoumaixinxi shoumaixinxi){
        return chongwu.updateDianJiLiang(shoumaixinxi);
     }
     public int insertMoney2(money money){
        return chongwu.insertMoney2(money);
     }

}
