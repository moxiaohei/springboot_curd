# springboot_curd
一个简单的springboot对数据库进行增删改查的小案例

1、其中项目的结构图为

```
src/
 +- main/
     +- java/
        +- com.mxf.
             +- bean
             +- controller
             +- dao
             +- service
                +-impl
             |- App.java
     +- resources/
             |- application.properties

src/
 +- main/
     +- webapp/
         +- WEB-INF/
              +- jsp/
```

2.数据库的准备如下：

```
CREATE DATABASE first;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `uauth` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `ustatus` tinyint(1) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

```

3.改数据库配置 打开 application.properties 文件， 修改相应的数据源配置，比如数据源地址、账号、密码等。

4.运行App.java文件中的main方法启动SpringBoot

5.打开浏览器进行访问

