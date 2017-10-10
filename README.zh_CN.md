# Perfect JSON API 示例 [English](README.md)

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="http://stackoverflow.com/questions/tagged/perfect" target="_blank">
        <img src="http://www.perfect.org/github/perfect_gh_button_2_SO.jpg" alt="Stack Overflow" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

一个Perfect JSON API示例

该项目通过SPM软件包管理器编译，是[Perfect](https://github.com/PerfectlySoft/Perfect)项目之一</br>
请确保您已经安装了Xcode 8.0或更高版本。

## 准备工作 - 使用Xcode 8

* 导出或下载工程
* 在终端中，导航到目录并执行

```
swift package generate-xcodeproj
```

* 打开 `Perfect-JSON-API.xcodeproj`
* 在"Project Settings"下的"Library Search Paths"中添加`$(PROJECT_DIR)`递归. **(这一步将不需要在更高版本的Xcode 8中做)**
* 在Xcode的构建目标下拉来选择可执行文件
* 在Xcode中使用(cmd-R)命令来编译运行项目工程

您将会在Xcode控制台看到如下输出:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* 打开浏览器，通过 [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people)访问

## 准备工作 - 使用终端

* 导出或下载工程;
* 在终端中，导航到工程目录
* 执行 `swift build`
* 项目编译成功后, 请执行 `./.build/debug/Perfect-JSON-API`

您将会看到如下输出:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* 打开浏览器，通过 [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people)访问

## 已包含的路由

此API中包含下列演示路由:

* GET: [http://localhost:8181/](http://localhost:8181/) - 一个返回显示"Hello, world!"的HTML页面。
* GET: [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people) - 从模拟数据返回JSON形式的persons列表。
* POST: [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people) - 将一个person添加到内部模拟对象并返回一个JSON形式的数组. 请注意需要下列参数: `firstName`, `lastName`, `email`.
* POST: [http://localhost:8181/api/v1/people/json](http://localhost:8181/api/v1/people/json) - 接受原本的JSON, 添加一个新的person, 返回一个新的列表. JSON是下面的格式:

``` javascript
{
    "email": "test@example.com",
    "firstName": "Test",
    "lastName": "User"
}
```
## Postman Collection

文件夹包含了一个Postman的URL集合的`Example-WeatherAPI.postman_collection`文件

如果已经安装了Postman,就可以导入文件并轻松使用请求路由

## 问题报告

目前我们已经把所有错误报告合并转移到了JIRA上，因此github原有的错误汇报功能不能用于本项目。

您的任何宝贵建意见或建议，或者发现我们的程序有问题，欢迎您在这里告诉我们。[http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1)。

目前问题清单请参考以下链接： [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)



## 更多内容
关于Perfect更多内容，请参考[perfect.org](http://perfect.org)官网。
