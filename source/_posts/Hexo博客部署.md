---
title: Hexo博客部署
date: 2021-11-24 14:08:31
categories: 技术分享          #分类
tags:                       #标签
  - 技术
  - 编程
---
### 1. 环境准备

在开始使用 Hexo 之前，需要安装以下软件：

- **Node.js**：Hexo 是基于 Node.js 开发的，所以需要先安装 Node.js。你可以从 [Node.js 官方网站](https://nodejs.org/) 下载适合你操作系统的版本进行安装。安装完成后，在命令行中输入 `node -v` 和 `npm -v` 来验证安装是否成功，如果能显示出版本号，说明安装成功。
- **Git**：用于将本地博客项目部署到远程仓库，如 GitHub。可以从 [Git 官方网站](https://git-scm.com/) 下载并安装。安装完成后，在命令行中输入 `git --version` 验证安装情况。

### 2. 安装 Hexo

打开命令行工具，执行以下命令全局安装 Hexo：

```markdown
npm install -g hexo-cli
```

安装完成后，输入 `hexo -v` 验证安装是否成功。



要提交到远程仓库需要执行以下命令

```
npm install hexo-deployer-git --save
```



### 3. 初始化博客项目

在你想要创建博客的目录下，执行以下命令初始化 Hexo 项目：

```markdown
hexo init D:\Blog #D:\Blog就是后续博客的根目录，可根据实际情况
cd D:\Blog
npm install
```

上述命令会在D盘下创建一个名为 `Blog` 的文件夹，并初始化 Hexo 项目，同时安装所需的依赖。



### 4. 项目目录结构

初始化完成后，项目的基本目录结构如下：

```markdown
![image-20250225081328740](D:\Blog\source\_posts\Hexo博客部署\image-20250225081328740.png)my-blog/
├── _config.yml       # 博客的全局配置文件
├── package.json      # 项目依赖信息
├── scaffolds/        # 模板文件夹
├── source/           # 博客文章的源文件
│   ├── _drafts/      # 草稿文章
│   └── _posts/       # 正式发布的文章
└── themes/           # 主题文件夹
```



### 5. 生成静态文件

在命令行中执行以下命令将 Markdown 文件生成静态 HTML 文件：

```markdown
hexo generate
```

或简写

```
hexo g
```

每次更改md文件后,都要执行一次命令来更新html文件。

### 6. 本地预览

执行以下命令启动本地服务器，预览博客效果：

```
hexo server
```

或简写

```
hexo s
```

在浏览器输入以下地址浏览：

```
http://localhost:4000 
```

![image-20250225090231693](Hexo%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/image-20250225090231693.png)

### 7.提交到远程仓库

```
hexo d
```

或简写

```
hexo d
```

### 8.切换主题

打开你的博客文件夹，会发现有一个`themes`文件夹，这就是存放网站主题的文件夹

![image-20250330151354391](./Hexo%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/image-20250330151354391.png)

打开文件夹，你就能看到现在能用的主题有哪几个，文件夹名就是主题名。我这里只有一个主题

![image-20250330151615798](./Hexo%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/image-20250330151615798.png)

选好主题后，就得先把主题弄到本地来，可以使用`git clone`命令进行下载(具体参考每个主题仓库的`README`文档)，也有一种粗暴的方法，直接下载压缩包，然后解压到刚才说的`themes`文件夹就可以了



在`_config.yml`中的`theme`选择主题

![image-20250330152114032](./Hexo%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/image-20250330152114032.png)

![image-20250330152237223](./Hexo%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/image-20250330152237223.png)

重新执行生成命令`hexo g`后，再启动本地预览`hexo s`，主题就变了

![image-20250330152739768](./Hexo%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/image-20250330152739768.png)

