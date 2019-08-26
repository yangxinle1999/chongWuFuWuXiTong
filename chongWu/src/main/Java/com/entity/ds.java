package com.entity;

import java.util.InputMismatchException;
import java.util.Scanner;

public class ds {
    public static void main(String[] args) {
        try{
            Scanner input=new Scanner(System.in);
            System.out.println("请输入被除数：");
            int x=input.nextInt();
            System.out.println("请输入除数：");
            int y=input.nextInt();
            int res=x/y;
            System.out.println(x+"/"+y+"="+res);
        }catch (InputMismatchException e){
            System.out.println("请输入整数");
        }catch (Exception e){
            System.out.println("除数不能是0");
        }
    }
}
