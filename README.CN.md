<p align="center">
  <img width="320" src="https://as2-image.oss-cn-beijing.aliyuncs.com/logo_horizontal.png">
</p>

<p align="center">
  
</p>

 [English](./README.md)  |  简体中文  

## 简介

[MTTK_AS2](https://github.com/mttk-as2/MTTK_AS2) 是一个遵循AS2协议来实现报文收发的 java 软件系统。 系统中可以灵活配置证书、合作伙伴AS2信息、本地AS2信息等。
MTTK_AS2拥有完善的系统监控和错误追踪，MTTK_AS2 映射模块支持任意数据格式转换成任意数据格式(例如：xml转json/xml转edi/json转edi/edi转json 等)。
MTTK_AS2配套有对应的MTTK_AS2_CLOUD 云端系统，您可以利用MTTK_AS2 向CLOUD 注册，注册Cloud 后可享受 部署映射（格式转换工具） 、配置备份、售后支持等服务。


- [安装文档](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/Mttk%20AS2%20Installation_CN.pdf)

- [使用文档](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/MTTK%20AS2%20User%20Manual_CN.pdf)

- [讨论组](https://github.com/mttk-as2/MTTK_AS2/issues)

- 联系邮箱：[as2@mttk.com.cn]

## 系统特征
- [AS2]  |  [RFC4130]  |  [EDI]  |  [ANSI X12]  |  [EDIFACT]

- web管理界面灵活配置合作伙伴

- 支持界面生成和配置证书

- 支持各类AS2加密协调、AS2压缩

- 支持同步MDN、异步MDN

- 支持记录传输报文，以及完整的AS2 message

- 支持运行监控和错误追踪

## 前序准备
MTTK_AS2 是java 进行开发，存储用的是mongDB 这意味着你可能需要对这两者有大致的了解。  

**如果GitHub访问太慢，可以移步国内开源社区 [码云：https://gitee.com/mttk-as2/MTTK_AS2](https://gitee.com/mttk-as2/MTTK_AS2)**

**系统截图**  

<p align="center">
  <img width="900" src="https://as2-image.oss-cn-beijing.aliyuncs.com/main.png">
</p>

<p align="center">
  <img width="900" src="https://as2-image.oss-cn-beijing.aliyuncs.com/runtime.png">
</p>

<p align="center">
  <img width="900" src="https://as2-image.oss-cn-beijing.aliyuncs.com/runtimeDetail.png">
</p>

**安装包**

考虑到安装系统需要一定的技术能力去配置 jdk 和mongoDB 这里我们把安装程序分为两个不同类型的安装包  

- [FULL](https://github.com/mttk-as2/MTTK_AS2/tree/master/full)
包含mongoDB运行环境的安装包  (只适用于64位windows) **因为FULL包含mongodb运行环境，所以包比较大。而github 单个文件最大只允许100M,所以我们把完整的压缩文件分成了2个，请下载全部的2个压缩文件后一起解压**

- [LESS](https://github.com/mttk-as2/MTTK_AS2/tree/master/less)
不包含jdk和mongoDB运行环境的基础安装包 (此安装包需要自己安装jdk和mongoDB 运行环境)


## 功能

```
- 登录 / 注销

- 业务监控
  - 仪表盘
  - 业务数据
  - 异常报警
  - 系统日志

- 日常配置
  - 合作伙伴配置
  - 本地配置
  - 证书管理
  - 自增序号

- 实用工具
  - 系统设置
  - 用户管理
  - 配置迁移
  - 用户设置
  - 关于

- cloud云管理
  - 账号管理
  - 映射管理
  - 备份管理
  - 售后管理
```

## FULL包安装

```bash
# 下载安装包
# 下载好2个压缩包文件，并把它们一起解压

# 解压FULL安装包 [\MTTK_AS2\full\FULL1.rar and FULL2.rar ]

# 解压后，进入解压后的bin目录 [\mttk_as2\work\bin]

# 安装jdk 安装到jdk 到 work\runtime\jre 目录下 可参考安装手册

# 运行mongoDB环境
mongoStartup.bat

# windows 服务方式运行mongoDB环境
mongoInstallService.bat

# 启动MTTK_AS2服务
startup.bat
```

浏览器访问 http://localhost:5555  
默认登录用户： **admin**  
默认登录密码： **123456**
## LESS包安装


```bash
# 下载安装包
# 下载好压缩包文件，并把它们解压

# 解压项目目录 [\MTTK_AS2\less\LESS.rar]

```
详情请参考 [安装文档](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/Mttk%20AS2%20Installation_CN.pdf)

## 其它


更多信息请参考 [使用文档](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/MTTK%20AS2%20User%20Manual_CN.pdf)

## 更多开源地址

- [GitHub：https://github.com/mttk-as2/MTTK_AS2](https://github.com/mttk-as2/MTTK_AS2)

- [码云：https://gitee.com/mttk-as2/MTTK_AS2](https://gitee.com/mttk-as2/MTTK_AS2)

- [SOURCEFORGE：https://sourceforge.net/projects/mttk-as2/](https://sourceforge.net/projects/mttk-as2/)

## Browsers support

Modern browsers and Internet Explorer 10+.

| [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/edge/edge_48x48.png" alt="IE / Edge" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>IE / Edge | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/firefox/firefox_48x48.png" alt="Firefox" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>Firefox | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/chrome/chrome_48x48.png" alt="Chrome" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>Chrome | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/safari/safari_48x48.png" alt="Safari" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>Safari |
| --------- | --------- | --------- | --------- |
| IE10, IE11, Edge | last 2 versions | last 2 versions | last 2 versions |

## License

[MTTK_AS2](https://github.com/mttk-as2/MTTK_AS2/blob/master/LICENSE)

Copyright (c) 2020 http://www.mttk.com.cn
