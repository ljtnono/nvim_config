# nvim配置

## 环境要求

nvim版本号：v0.8以上

## 使用方式

1、将本仓库克隆到~/.config/nvim文件夹下


```bash
    
    git clone git@github.com:ljtnono/nvim_config.git

```

2、使用vim打开文件，并安装相关插件

```bash

vim ~/.config/nvim/init.lua

# 打开文件之后执行命令

:PackerSync

```


## 功能列表

* 文件导航
* vim主题
* 状态栏
* lsp
* 自动补全
* tab栏切换
* bufferline

## 问题解决

1、下载插件很慢如何解决？

配置git代理，具体操作如下：

```bash

git config --global http.proxy "http://127.0.0.1:7890"
git config --global https.proxy "https://12.0.0.1:7890"

```

