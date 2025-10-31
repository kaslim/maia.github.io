# GitHub Pages 部署问题诊断

## 可能的问题

### 1. GitHub Pages URL 问题

对于仓库 `kaslim/maia.github.io`，GitHub Pages 的 URL 可能是：

- ❌ **错误尝试**: https://maia.github.io/ （这需要自定义域名配置）
- ✅ **正确 URL**: https://kaslim.github.io/maia/

### 2. GitHub Pages 配置检查

1. 访问仓库设置: https://github.com/kaslim/maia.github.io/settings/pages
2. 确认配置:
   - Source: Deploy from a branch
   - Branch: main
   - Folder: / (root)
3. 保存并等待 1-2 分钟

### 3. 路径问题修复

如果网站在子路径下运行（如 `/maia/`），需要添加 base 路径。

让我检查并修复这个问题。

