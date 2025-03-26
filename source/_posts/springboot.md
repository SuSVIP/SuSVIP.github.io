---
title: springboot
date: 2022-03-02 22:16:15
tags:
---

#  

第一个springboot程序

# 2、包管理

[SpringBoot父子工程模块开发环境搭建 ](https://www.jianshu.com/p/5ef7e92bb5f0)

## 1、创建一个maven工程，作为父工程

+ 结构如下

  

+ 修改pom

  + 指名子模块

    ```xml
    <modules>
        <module>springboot01_hello</module>
    </modules>
    ```

    

  + 搜索

## 2、创建一个springboot工程，作为子模块

+ 结构如下

  

+ 修改pom

# 3、JSR303数据校验及多环境切换

## 先看看如何使用

+ Springboot中可以用@validated来校验数据，如果数据异常则会统一抛出异常，方便异常中心统一处理。我们这里来写个注解让我们的name只能支持Email格式；

