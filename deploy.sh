#!/bin/bash
# Hugo 博客一键部署脚本
# 使用方式: ./deploy.sh "提交说明"

MSG="${1:-更新博客内容}"

echo "📝 提交信息: $MSG"
echo ""

# 添加所有更改
git add .

# 提交
git commit -m "$MSG"

# 推送
git push origin main

echo ""
echo "✅ 推送完成！GitHub Actions 将自动构建并部署博客。"
echo "🌐 查看部署状态: https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO/actions"
echo "📖 博客地址: https://YOUR_GITHUB_USERNAME.github.io/"
