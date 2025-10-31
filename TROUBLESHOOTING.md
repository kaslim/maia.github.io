# GitHub Pages 部署问题排查指南

## 🔍 问题：网页打不开

### 步骤 1: 确认 GitHub Pages 配置

1. **访问仓库设置**
   ```
   https://github.com/kaslim/maia.github.io/settings/pages
   ```

2. **检查配置**
   - ✅ Source: `Deploy from a branch`
   - ✅ Branch: `main`
   - ✅ Folder: `/ (root)`
   - 点击 **Save** 保存

3. **等待部署**
   - GitHub Pages 需要 1-2 分钟构建
   - 查看 Actions 标签页确认部署状态

### 步骤 2: 确认正确的 URL

对于仓库 `kaslim/maia.github.io`，可能的 URL：

**选项 A: 用户页面格式（推荐）**
```
https://kaslim.github.io/maia/
```

**选项 B: 仓库名格式**
如果仓库名是 `maia.github.io`，可能需要：
```
https://maia.github.io/
```

### 步骤 3: 检查部署状态

1. **访问 Actions 标签页**
   ```
   https://github.com/kaslim/maia.github.io/actions
   ```

2. **查看最新部署**
   - 应该看到 "pages build and deployment"
   - 如果是绿色 ✅，表示部署成功
   - 如果是红色 ❌，点击查看错误信息

### 步骤 4: 常见问题修复

#### 问题 1: 404 错误

**原因**: GitHub Pages 未启用或配置错误

**解决**:
1. 确认 Settings → Pages 已配置
2. 确认 `index.html` 在根目录
3. 等待几分钟后刷新

#### 问题 2: 样式丢失或资源 404

**原因**: 路径问题

**已修复**: 已添加 base path 自动检测

**如果仍有问题**:
- 检查浏览器控制台（F12）查看具体错误
- 确认所有文件都在根目录（不是 `docs/` 文件夹）

#### 问题 3: JavaScript 错误

**原因**: CORS 或路径问题

**解决**:
1. 检查浏览器控制台错误信息
2. 确认 `data/samples.json` 和 `data/metrics.json` 存在
3. 尝试硬刷新 (Ctrl+Shift+R 或 Cmd+Shift+R)

### 步骤 5: 验证文件结构

正确的文件结构应该是：
```
maia-demo/
├── index.html          ✓ 主页面（在根目录）
├── css/                ✓ CSS 文件
├── js/                 ✓ JavaScript 文件
├── data/               ✓ 数据文件
│   ├── audio/          ✓ 音频文件
│   ├── samples.json    ✓
│   └── metrics.json    ✓
└── README.md           ✓
```

### 步骤 6: 手动测试

**本地测试**:
```bash
cd /home/yons/文档/AAAI/ISMIR/maia-demo
python -m http.server 8000
```

访问 `http://localhost:8000` 检查是否正常工作

### 步骤 7: 联系支持

如果以上步骤都无法解决问题：

1. **检查 GitHub Pages 状态**
   ```
   https://www.githubstatus.com/
   ```

2. **查看 GitHub 文档**
   ```
   https://docs.github.com/en/pages
   ```

3. **检查仓库权限**
   - 确保仓库是 Public
   - 如果是 Private，需要 GitHub Pro/Team 账户才能使用 Pages

## 🎯 快速诊断命令

在仓库根目录运行：

```bash
# 检查文件结构
ls -la

# 检查 Git 状态
git status

# 检查远程仓库
git remote -v

# 检查提交历史
git log --oneline -5
```

## ✅ 成功标志

网站正常工作时会看到：
- ✅ 页面正常加载
- ✅ 样式完整（没有空白页面）
- ✅ 音频播放器可见
- ✅ 数据图表显示
- ✅ 没有控制台错误（F12 检查）

## 📞 需要帮助？

如果问题仍然存在，请提供：
1. 访问的 URL
2. 浏览器控制台错误（F12 → Console）
3. GitHub Actions 部署日志
4. 具体的错误信息

---

**最后更新**: 已添加 base path 自动检测，已推送修复

