package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.json.JsonMessage;
import com.service.chongwuService;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.utils.Msg;
import com.wenJianGuanLi.wenJianShangChuan;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpCookie;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class chongwuController {
    @Autowired
    private chongwuService chongwuService;

    @RequestMapping(value = "/ajax", method = RequestMethod.POST)
    public void ajax(@RequestParam("name") String name, HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setContentType("text/text;charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        userdetail userdetail = chongwuService.selectbyname(name);
        if (userdetail == null) {
            try {
                response.getWriter().print(1);//1表示此名字没有被注册，可以使用
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.getWriter().print(0);//0表示此名字已被注册，不可以使用
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("/chaxun")
    public String chaxun(HttpServletRequest request, HttpSession session, HttpServletResponse response
            , @RequestParam("name") String name, @RequestParam("password") String password, Model model) throws Exception {
        session.setAttribute("name", name);//把名字存入到session中，以后只要浏览器不关闭，用session.getAttribute("name")均可以得到name的值
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String checkcode = request.getParameter("checkcode");
        //PrintWriter out = response.getWriter();
        if (checkcode.equals("") || checkcode == null) {
            return "dengLuZhuCe/shuruyanzhengma";
        } else {
            if (!checkcode.equalsIgnoreCase((String) session.getAttribute("randCheckCode"))) {
                return "dengLuZhuCe/yanzhengmacuowu";
            } else {
                userdetail userdetail = chongwuService.selectbynameandpas(name, password);
                if (userdetail == null) {
                    return "dengLuZhuCe/fail";
                } else {
                    model.addAttribute("suc", userdetail);
                    return "shouYe/cg";
                }
            }
        }
    }

    @RequestMapping(value = "/zhuce", method = RequestMethod.POST)
    public String zhuce(@RequestParam("pimage") MultipartFile file, @RequestParam("name") String name, @RequestParam("num") String num, @RequestParam("password") String password,
                        @RequestParam("sex") String sex, @RequestParam("age") Integer age, @RequestParam("grade") String grade) {
//        String filePath = "E:\\image";// 保存图片的路径，图片上传成功后，将路径保存到数据库
//        String originalFilename = file.getOriginalFilename();// 获取原始图片的扩展名
//        String newFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFilename;// 生成文件新的名字
//        File targetFile = new File(filePath, newFileName);// 封装上传文件位置的全路径
//        try {
//            file.transferTo(targetFile);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();//使用了封装的图片上传代码，减少了代码的冗余
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);
        userdetail userdetail = new userdetail();
        userdetail.setName(name);
        userdetail.setNum(num);
        userdetail.setPassword(password);
        userdetail.setSex(sex);
        userdetail.setAge(age);
        userdetail.setGrade(grade);
        userdetail.setPimage("http://localhost:8088/image/" + newFileName);
        int m = chongwuService.charu(userdetail);
        if (m == 1) {
            return "dengLuZhuCe/charucg";
        } else {
            return "dengLuZhuCe/charushibai";
        }
    }

    @RequestMapping(value = "/user1")
    public String user(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String name = (String) session.getAttribute("name");
        System.out.println(name);
        userdetail userdetail = chongwuService.selectbyname(name);
        model.addAttribute("succ", userdetail);
        // System.out.println(name);
        return "geRenXinXi/user1";
    }

    @RequestMapping(value = "/user2", method = RequestMethod.POST)
    public String update(@RequestParam("username") String name, @RequestParam("num") String num, @RequestParam("password") String password,
                         @RequestParam("grade") String grade) {
        userdetail userdetail = new userdetail();
        userdetail.setGrade(grade);
        userdetail.setPassword(password);
        userdetail.setNum(num);
        userdetail.setName(name);
        int a = chongwuService.update(userdetail);
        if (a == 0) {
            return "geRenXinXi/updateshibai";
        } else {
            return "geRenXinXi/updatecg";
        }
    }

    @RequestMapping(value = "/jiYang", method = RequestMethod.POST)
    public String insert1(@RequestParam("petName") String petName, @RequestParam("petCateGory") String petCateGory, @RequestParam("petTrick")
            String petTrick, @RequestParam("petTime") String petTime, @RequestParam("tel") String tel, HttpSession session) {
        String jiYangRenMing = (String) session.getAttribute("name");
        petJiYang petJiYang = new petJiYang();
        petJiYang.setJiYangRenMing(jiYangRenMing);
        petJiYang.setPetCateGory(petCateGory);
        petJiYang.setPetName(petName);
        petJiYang.setPetTime(petTime);
        petJiYang.setPetTrick(petTrick);
        petJiYang.setTel(tel);
        int s = chongwuService.insert1(petJiYang);
        if (s == 1) {
            return "jiYangShouYang/cg";
        } else {
            return "jiYangShouYang/sb";
        }
    }

    @RequestMapping("/shouyeshouyang")//分页
    public String shouyeshouyang(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                 @RequestParam(name = "size", defaultValue = "4") int size, Model model) {
        PageHelper.startPage(page, size);
        List<petJiYang> list = chongwuService.list();
        PageInfo<petJiYang> p = new PageInfo<petJiYang>(list);
        model.addAttribute("pageInfo", p);
        System.out.println(p);
        //List<petJiYang> list;
        //list=chongwuService.list();
        //request.setAttribute("list",list);
        //System.out.println(list);
        return "jiYangShouYang/shouYeShouYang";
    }

    @ResponseBody
    @RequestMapping(value = "/shouyangchaxun",method = RequestMethod.POST)
    public void shouyangchaxun(@RequestBody petJiYang petJiYang, HttpServletResponse response) {
        petShouYang petShouYang = new petShouYang();
        petShouYang.setJiYangRenMing(petJiYang.getJiYangRenMing());
        petShouYang.setPetTime(petJiYang.getPetTime());
        petShouYang.setPetTrick(petJiYang.getPetTrick());
        petShouYang.setPetName(petJiYang.getPetName());
        petShouYang.setPetCateGory(petJiYang.getPetCateGory());
        petShouYang mm = chongwuService.shouyangchaxun(petShouYang);
        if (mm == null) {
            try {
                response.getWriter().println(1);//1表示还未收养，可以收养
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.getWriter().println(0);//0表示插入成功
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @ResponseBody
    @RequestMapping(value = "/shouyang")
    public void shouyang(@RequestBody petJiYang petJiYang, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/text;charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        String shouYangReing = (String) session.getAttribute("name");
        petShouYang petShouYang = new petShouYang();
        petShouYang.setPetCateGory(petJiYang.getPetCateGory());
        petShouYang.setShouYangRenMing(shouYangReing);
        petShouYang.setPetName(petJiYang.getPetName());
        petShouYang.setPetTrick(petJiYang.getPetTrick());
        petShouYang.setPetTime(petJiYang.getPetTime());
        petShouYang.setJiYangRenMing(petJiYang.getJiYangRenMing());
        petShouYang.setTel(petJiYang.getTel());
        System.out.println(petJiYang.getJiYangRenMing());
        int hh = chongwuService.insert2(petShouYang);
        if (hh == 1) {
            try {
                response.getWriter().println(1);//1表示插入成功
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.getWriter().println(0);//0表示插入失败
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("/shouYang")
    public String shouYang(HttpSession session, Model model, @RequestParam(value = "page", defaultValue = "1") Integer page,
                           @RequestParam(name = "size", defaultValue = "1") int size) {
        PageHelper.startPage(page, size);
        String shouYangRenMing = (String) session.getAttribute("name");
        List<petJiYang> petJiYang = chongwuService.selectShouYang(shouYangRenMing);
        PageInfo<petJiYang> p = new PageInfo<petJiYang>(petJiYang);
        model.addAttribute("shouyang", p);
        return "jiYangShouYang/shouYangXinXI";
    }

    @RequestMapping("/xuYuanQiang")
    @ResponseBody
    public List<xuYuanQiang> xuYuanQiangList() {
        return chongwuService.xuYuangQiang();
    }

    @RequestMapping("/xuYuanQiang2")
    public String xuYuanQiangChaRu(@RequestParam("content") String content, @RequestParam("time") String time, HttpSession session) {
        xuYuanQiang xuYuanQiang = new xuYuanQiang();
        xuYuanQiang.setName((String) session.getAttribute("name"));
        xuYuanQiang.setContent(content);
        xuYuanQiang.setTime(time);
        int m = chongwuService.xuYuanQiangChaRu(xuYuanQiang);
        if (m == 1) {
            return "xuYuanQiang/xuYuancg";
        } else {
            return "xuYuanQiang/xuYuansb";
        }
    }

    @RequestMapping(value = "/jiaoLiu", method = RequestMethod.POST)
    public String jiaoLiu(@RequestParam("content") String content, HttpSession session) {
        String name = (String) session.getAttribute("name");
        jiaoLiu jiaoLiu = new jiaoLiu();
        jiaoLiu.setName(name);
        jiaoLiu.setContent(content);
        int kk = chongwuService.jiaoLiu(jiaoLiu);
        if (kk == 1) {
            return "jiaoLiu/fabucg";
        } else {
            return "jiaoLiu/fabusb";
        }

    }

    @RequestMapping("/jiaoLiuList")
    public String jiaoLiuList(@RequestParam(value = "page", defaultValue = "1") Integer page,
                              @RequestParam(name = "size", defaultValue = "5") int size, Model model) {
        PageHelper.startPage(page, size);
        List<jiaoLiu> listJiaoLiu = chongwuService.listJiaoLiu();
        PageInfo<jiaoLiu> p = new PageInfo<jiaoLiu>(listJiaoLiu);
        model.addAttribute("pageIn", p);
        //System.out.println(p);
        return "jiaoLiu/jiaoLiu";
    }

    @RequestMapping("/imag")
    public String selectPimage(HttpSession session, Model model) {
        String name = (String) session.getAttribute("name");
        userdetail userdetail = chongwuService.selectPimage(name);
        session.setAttribute("ff", userdetail.getPimage());
        model.addAttribute("file", userdetail);
        return "shouYe/shouye";
    }

    @RequestMapping("/imagg")
    public String selectPimage2(HttpSession session) {
        String name = (String) session.getAttribute("name");
        userdetail userdetail = chongwuService.selectPimage(name);
        session.setAttribute("fff", userdetail.getPimage());
        return "geRenXinXi/gerenxinxi";
    }

    @ResponseBody
    @RequestMapping(value = "/money", method = RequestMethod.POST)
    public JsonMessage selectMoney(@RequestParam("select") Integer money, HttpServletResponse response, HttpServletRequest request,
                                   HttpSession session) {
        try {
            request.setCharacterEncoding("UTF-8");
            System.out.println(money);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String name = (String) session.getAttribute("name");
        money money2 = chongwuService.selectMoney(name);
        response.setContentType("text/text;charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        if (money2.getYue() - money >= 0) {  //判断余额是否够用
            Integer my1 = money2.getYue() - money;//购买完商品之后剩余的钱
            System.out.println(my1);
            return new JsonMessage(200, "余额充足", my1);
        } else {
            System.out.println("chiongqian");
            System.out.println(money2.getYue());
            return new JsonMessage(500, "您的余额不足", money2.getYue());
        }
    }

    @ResponseBody
    @RequestMapping(value = "/updateMoney", method = RequestMethod.POST)
    public void updateMoney(@RequestBody money money, HttpSession session, HttpServletResponse response) {
        String name = (String) session.getAttribute("name");
//        System.out.println(money.getYue());
//        System.out.println(money.getFuwuleixing());
        money.setName(name);
        int mm = chongwuService.insertMoney(money);
        response.setContentType("text/text;charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        if (mm == 1) {
            try {
                response.getWriter().print(1);//1表示更新成功
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.getWriter().print(0);//0表示更新失败
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    @RequestMapping(value = "/shangChuan", method = RequestMethod.POST)
    public String insertWenJian(@RequestParam("file") MultipartFile file, HttpSession session) {
        String name = (String) session.getAttribute("name");
//        String filePath = "E:\\image";// 保存文件的路径，文件上传成功后，将路径保存到数据库
//        String originalFilename = file.getOriginalFilename();// 获取原始文件的扩展名
//        String newFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFilename;// 生成文件新的名字
//        File targetFile = new File(filePath, newFileName);// 封装上传文件位置的全路径
//        try {
//            file.transferTo(targetFile);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);//减少代码的冗余
        wenjian wenjian = new wenjian();
        wenjian.setWenjian(newFileName);
        wenjian.setName(name);
        int m = chongwuService.insertWenJian(wenjian);
        if (m == 1) {
            return "wenJianGuanLi/cg";
        } else {
            return "wenJianGuanLi/sb";
        }
    }

    @RequestMapping(value = "dangexiazai", method = RequestMethod.POST)//单文件下载
    public void selectWenJian(HttpServletRequest request, HttpServletResponse response, String filename, HttpSession session) throws IOException {
        String name = (String) session.getAttribute("name");
        String filePath = "E:\\image";
        filename = chongwuService.selectWenJian(name).getWenjian();//获得文件名和拓展名
        String path = filePath + "\\" + filename;//获取文件的绝对路径名称
        System.out.println(path);
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename, "UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while ((len = bis.read()) != -1) {
            out.write(len);
            out.flush();
        }
        out.close();
    }

    @RequestMapping("/duoXiaZai")
    public String selectDuoWenJian(Model model,@RequestParam(value = "page", defaultValue = "1") Integer page,
                                   @RequestParam(name = "size", defaultValue = "3") int size) {
        PageHelper.startPage(page, size);
        List<wenjian> wenjianList = chongwuService.selectDuoWenJian();
        PageInfo<wenjian> pp = new PageInfo<wenjian>(wenjianList);
        model.addAttribute("list1", pp);
        return "wenJianGuanLi/duoGeXiaZai";
    }

    @RequestMapping("/duoWenJian/{wenjian}")//多文件下载
    public void duoWenJian(@PathVariable("wenjian") String filename, HttpServletResponse response) throws IOException {
        //System.out.println(filename);
        String filePath = "E:\\image";
        String path = filePath + "\\" + filename + ".txt";//获取文件的绝对路径名称
        System.out.println(path);
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename, "UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;wenjian=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while ((len = bis.read()) != -1) {
            out.write(len);
            out.flush();
        }
        out.close();
    }

    @RequestMapping(value = "/selectM")
    public String selectM(Model model, HttpSession session) {
        String name = (String) session.getAttribute("name");
        List<money> list = chongwuService.selectM(name);
        model.addAttribute("mmm", list);
        return "geRenXinXi/dingDan";
    }

    @RequestMapping(value = "/shoumaixinxi", method = RequestMethod.POST)
    public String shoumaixinxi(@RequestParam("image") MultipartFile file, @RequestParam("chongWuLeiBie") String chongWuLeiBie
            , @RequestParam("chongWuAge") String chongWuAge, @RequestParam("price") Integer price, @RequestParam("tel") String tel
            , @RequestParam("address") String address, HttpSession session) {
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();//使用了封装的图片上传代码，减少了代码的冗余
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);
        String name = (String) session.getAttribute("name");
        shoumaixinxi shoumaixinxi = new shoumaixinxi();
        shoumaixinxi.setCongWuLeiBie(chongWuLeiBie);
        shoumaixinxi.setChongWuAge(chongWuAge);
        shoumaixinxi.setPrice(price);
        shoumaixinxi.setTel(tel);
        shoumaixinxi.setAddress(address);
        shoumaixinxi.setName(name);
        shoumaixinxi.setImage("http://localhost:8088/image/" + newFileName);
        int mm = chongwuService.insertSell(shoumaixinxi);
        if (mm == 1) {
            return "shouMai/suc";
        } else {
            return "shouMai/fail";
        }
    }

    @RequestMapping("shoumaixinxilist")
    public String shoumaixinxilist(Model model, @RequestParam(value = "page", defaultValue = "1") Integer page,
                                   @RequestParam(name = "size", defaultValue = "4") int size, HttpSession session) {
        PageHelper.startPage(page, size);
        List<shoumaixinxi> list = chongwuService.shoumaixinxilist();
        session.setAttribute("gouMai", list);
        PageInfo<shoumaixinxi> hh = new PageInfo<shoumaixinxi>(list);
        model.addAttribute("list", hh);
        return "shouMai/gouMaiShangCheng";
    }

    @ResponseBody
    @RequestMapping(value = "/shoumai", method = RequestMethod.POST)
    public void shoumai(@RequestParam("i") Integer i, HttpServletResponse response,HttpSession session) {
       shoumaixinxi shoumaixinxi=chongwuService.selectShouMaiById(i);
        try {
            session.setAttribute("hhh",shoumaixinxi);
            response.getWriter().print(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/dianjiliang")
    public String dianjiliang(HttpSession session,Model model){
        shoumaixinxi shoumaixinxi=(shoumaixinxi) session.getAttribute("hhh");
//        System.out.println(shoumaixinxi.getChongWuLeiBie());
        shoumaixinxi.setDianjiliang(shoumaixinxi.getDianjiliang()+1);
        int f=chongwuService.updateDianJiLiang(shoumaixinxi);
        shoumaixinxi shoumaixinxi1=chongwuService.selectShouMaiById(shoumaixinxi.getId());
        model.addAttribute("az",shoumaixinxi1.getDianjiliang());
        return "shouMai/gouMaiXiangQing";
    }
    @ResponseBody
    @RequestMapping(value = "/selectBuy",method = RequestMethod.POST)
    public JsonMessage selectBuy(HttpSession session){
        String name=(String) session.getAttribute("name");
        shoumaixinxi shoumaixinxi=(shoumaixinxi) session.getAttribute("hhh");
        money money=chongwuService.selectMoney(name);
        System.out.println(shoumaixinxi.getPrice());
        System.out.println(money.getYue());
        if (money.getYue()>=shoumaixinxi.getPrice()){
            Integer my1=money.getYue()-shoumaixinxi.getPrice();
            session.setAttribute("yue",my1);
            return new JsonMessage(200, "余额充足", my1);
        }
        else {
            return new JsonMessage(500, "您的余额不足",money.getYue());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/updateBuy",method = RequestMethod.POST)
    public void updateBuy(HttpSession session,HttpServletResponse response){
        String name=(String) session.getAttribute("name");
        shoumaixinxi shoumaixinxi=(shoumaixinxi) session.getAttribute("hhh");//得到宠物的情况，并付给实体类money
        money money=new money();
        money.setName(name);
        money.setJiaoyijine(shoumaixinxi.getPrice());
        money.setSuogouchongwu(shoumaixinxi.getChongWuLeiBie());
        money.setYue((Integer) session.getAttribute("yue"));
        int result=chongwuService.insertMoney2(money);
        if (result==1){
            try {
                response.getWriter().print(1);
            }catch (IOException e){
                e.printStackTrace();
            }
        }else {
            try {
                response.getWriter().print(-1);
            }catch (IOException e){
                e.printStackTrace();
            }
        }

    }
}



