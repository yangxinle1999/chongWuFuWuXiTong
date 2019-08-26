package com.service;

import com.entity.*;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public interface chongwuService {
    userdetail selectbyname(String name);
    userdetail selectbynameandpas(String name,String password);
    int charu( userdetail userdetail);
    int update(userdetail userdetail);
    int insert1(petJiYang petJiYang);
    List<petJiYang> list();
    int insert2(petShouYang petShouYang);
    List<petJiYang> selectShouYang(String name);
    List<xuYuanQiang> xuYuangQiang();
    int xuYuanQiangChaRu(xuYuanQiang xuYuanQiang);
    int jiaoLiu(jiaoLiu jiaoLiu );
    List<jiaoLiu> listJiaoLiu();
    userdetail selectPimage(String name);
    money selectMoney(String name);
    int insertMoney(money money);
    int insertWenJian(wenjian wenjian);
    wenjian selectWenJian(String name);
    List<wenjian> selectDuoWenJian();
    List<money> selectM(String name);
    petShouYang shouyangchaxun(petShouYang petShouYang);
    int insertSell(shoumaixinxi shoumaixinxi);
    List<shoumaixinxi> shoumaixinxilist();
    shoumaixinxi selectShouMaiById(Integer id);
    int updateDianJiLiang(shoumaixinxi shoumaixinxi);
    int insertMoney2(money money);
}
