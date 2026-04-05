# Hugo 个人博客

基于 [Hugo](https://gohugo.io/) + [PaperMod](https://github.com/adityatelange/hugo-PaperMod) 主题搭建的个人博客，部署在 GitHub Pages。

## 🚀 快速开始

### 本地预览

```bash
hugo server --buildDrafts
```

然后打开 http://localhost:1313

### 新建文章

```bash
# 写博客
hugo new content posts/文章标题.md

# 记录每日目标
hugo new content daily/2026-04-05.md

# 添加知识库文章
hugo new content wiki/主题名.md
```

### 发布博客

方式一：一行命令（推荐）
```bash
bash deploy.sh "今天的更新说明"
```

方式二：手动 git
```bash
git add .
git commit -m "更新内容"
git push origin main
```

推送后，**GitHub Actions 会自动构建并部署**，约 1-2 分钟后博客更新。

## 📁 目录结构

```
my-blog/
├── content/
│   ├── posts/      # 博客文章
│   ├── daily/      # 每日目标
│   └── wiki/       # 知识库
├── themes/PaperMod # 主题
├── .github/
│   └── workflows/
│       └── deploy.yml  # 自动部署
├── hugo.toml       # 主配置
└── deploy.sh       # 一键发布脚本
```

## ⚙️ 配置 GitHub Pages

1. 在 GitHub 创建仓库（建议命名 `YOUR_USERNAME.github.io`）
2. 推送代码到 `main` 分支
3. 打开仓库 → Settings → Pages → Source 选择 **GitHub Actions**
4. 等待第一次 Actions 完成，博客即可访问

## ✍️ 写作技巧

每篇文章的 Front Matter 示例：

```yaml
---
title: "文章标题"
date: 2026-04-05
draft: false          # true = 草稿不发布，false = 发布
tags: ["标签1", "标签2"]
categories: ["分类"]
description: "文章简介"
---
```
