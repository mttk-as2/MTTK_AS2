<p align="center">
  <img width="320" src="https://as2-image.oss-cn-beijing.aliyuncs.com/logo_horizontal.png">
</p>

<p align="center">
  
</p>

English  |  [简体中文](./README.CN.md)

## Introduction

[MTTK_AS2](https://github.com/mttk-as2/MTTK_AS2) is a java software system that follows AS2 protocol to realize message sending and receiving. Certificates, partner AS2 information and local AS2 information can be flexibly configured in the system.
MTTK_AS2 has perfect system monitoring and error tracking, and MTTK_AS2 mapping module supports converting any data format into any data format (for example, xml to json/xml to edi/json to edi/edi to json, etc.).
MTTK_AS2 is equipped with the corresponding MTTK_AS2_CLOUD Cloud system. You can use MTTK_AS2 to register with CLOUD. After registering with Cloud, you can enjoy deployment mapping (format conversion tool), configuration backup, after-sales support and other services.。


- [Install doc](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/Mttk%20AS2%20Installation_EN.pdf)

- [Use doc](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/MTTK%20AS2%20User%20Manual_EN.pdf)

- [Discussion](https://github.com/mttk-as2/MTTK_AS2/issues)

- Contact email：[as2@mttk.com.cn]

## system characteristics
- [AS2] | [RFC4130] | [EDI] | [ANSI X12] | [EDIFACT]

- web management interface flexibly configures partners

- Support interface to generate and configure certificates

- Support various AS2 encryption coordination and AS2 compression

- Support synchronous MDN and asynchronous MDN

- Support recording transmission messages and complete AS2 message

- Support operation monitoring and error tracking

## Preparation
MTTK_AS2 is developed by java and stored by mongDB, which means that you may need to have a general understanding of both.  

**System screenshot**  

<p align="center">
  <img width="900" src="http://as2-image.oss-cn-beijing.aliyuncs.com/main_en.png">
</p>

<p align="center">
  <img width="900" src="http://as2-image.oss-cn-beijing.aliyuncs.com/runtime_en.png">
</p>

<p align="center">
  <img width="900" src="http://as2-image.oss-cn-beijing.aliyuncs.com/runtimeDetail_en.png">
</p>

**Installation package**

Considering that the installation system needs certain technical ability to configure jdk and mongoDB, we divide the installation program into two different types of installation packages    

- [FULL](https://github.com/mttk-as2/MTTK_AS2/tree/master/full)
Installation package containing jdk and mongoDB running environment (only applicable to 64-bit windows) 

- [LESS](https://github.com/mttk-as2/MTTK_AS2/tree/master/less)
The basic installation package of jdk and mongoDB running environment is not included (this installation package needs to install jdk and mongoDB running environment by itself)


## Features

```
- login / loginOut

- Monitor
  - Dashboard
  - Transaction
  - Alert
  - System log

- Daily Config
  - Partner
  - Local
  - Certificate
  - Sequence

- Utility
  - System settings
  - User management
  - Config migration
  - User settings
  - About

- Mttk Cloud
  - Account
  - Mapping
  - Backup
  - After sales
```

## FULL package installation

```bash
# Download installation package

# Enter the / full directory

# enter the decompressed bin directory [\mttk_as2\work\bin]

# Running mongoDB environment
mongoStartup.bat

# Windows service mode runs mongoDB environment
mongoInstallService.bat

# Start the MTTK_AS2 service
startup.bat
```

Browser access http://localhost:5555   
Default user： **admin**  
Default password： **123456**

## LESS package installation


```bash
# Download installation package
# Enter the / less directory

```
Please refer to for details [Install doc](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/Mttk%20AS2%20Installation_EN.pdf)

## Other


Please refer to for more information [Use doc](https://github.com/mttk-as2/MTTK_AS2/blob/master/doc/MTTK%20AS2%20User%20Manual_EN.pdf)

## More open source addresses

- [GitHub：https://github.com/mttk-as2/MTTK_AS2](https://github.com/mttk-as2/MTTK_AS2)

- [Gitee：https://gitee.com/mttk-as2/MTTK_AS2](https://gitee.com/mttk-as2/MTTK_AS2)

- [SOURCEFORGE：https://sourceforge.net/projects/mttk-as2/](https://sourceforge.net/projects/mttk-as2/)

## Browsers support

Modern browsers and Internet Explorer 10+.

| [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/edge/edge_48x48.png" alt="IE / Edge" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>IE / Edge | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/firefox/firefox_48x48.png" alt="Firefox" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>Firefox | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/chrome/chrome_48x48.png" alt="Chrome" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>Chrome | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/safari/safari_48x48.png" alt="Safari" width="24px" height="24px" />](https://godban.github.io/browsers-support-badges/)</br>Safari |
| --------- | --------- | --------- | --------- |
| IE10, IE11, Edge | last 2 versions | last 2 versions | last 2 versions |

## License

[MTTK_AS2](https://github.com/mttk-as2/MTTK_AS2/blob/master/LICENSE)

Copyright (c) 2020 http://www.mttk.com.cn
