<h1 align="center">Nvim配置</h1>

## 环境设置

nvim版本号：v0.8.0以上

## 使用方式

1、将本仓库克隆到~/.config/nvim文件夹下


```bash
    
git clone git@github.com:ljtnono/nvim_config.git

```

2、使用vim打开文件，并安装相关插件

```bash

vim ~/.config/nvim/lua/plugins/plugins-setup.lua

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
* 内置终端

## 问题解决

1、下载插件很慢如何解决？

配置git代理（需要科学上网，例如clash，默认端口为7890），具体操作如下：

```bash

git config --global http.proxy "http://127.0.0.1:7890"
git config --global https.proxy "https://12.0.0.1:7890"

```

2、nvim-tree在终端下无法正常显示icon

系统缺少相应的字体，安装后配置一下终端的字体即可

```bash

# macos
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# linux
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
cd nerd-fonts 
./install.sh 
cd.. 
rm -rf nerd-fonts

```

设置终端字体为nerdfont（终端环境alacritty）

alacritty.yml

```yml

font:
  size: 16
  normal:
    family: "Hack Nerd Font"

```


