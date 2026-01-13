# GitHub 上架指南

## ✅ 已完成的準備工作

1. ✅ **建立 .gitignore** - 排除不必要的檔案（prompt.txt、.claude/）
2. ✅ **建立 README.md** - 完整的專案說明文件
3. ✅ **初始化 Git** - 建立本地 Git 倉庫
4. ✅ **提交檔案** - 首次提交（commit: cf80448）

## 📦 準備上傳的檔案清單

以下檔案已加入 Git 並準備上傳到 GitHub：

- ✅ `index.html` - 主程式（30KB）
- ✅ `README.md` - 專案說明（新建）
- ✅ `.gitignore` - Git 忽略配置（新建）
- ✅ `啟動伺服器.bat` - Windows 啟動腳本（880 bytes）
- ✅ `操作步驟.md` - 詳細操作說明（19KB）
- ✅ `logo.png` - 啟動畫面 Logo（7.2MB）
- ✅ `作者資訊.png` - 作者照片（2.1MB）
- ✅ `Spatial Skybox Sample.gltf` - 環景球模板（2.9KB）
- ✅ `Spatial Skybox Sample.bin` - 幾何數據（9.3KB）
- ✅ `texture.jpg` - 範例全景圖（72KB）

**總大小：約 9.4MB**

## 🚫 已排除的檔案

以下檔案已被 .gitignore 排除，不會上傳：

- ❌ `prompt.txt` - 開發過程提示詞（不需要）
- ❌ `.claude/` - Claude 工作目錄（不需要）

---

## 🚀 上架到 GitHub 的步驟

### 步驟 1：在 GitHub 建立新倉庫

1. **登入 GitHub**
   - 前往 [https://github.com](https://github.com)
   - 登入您的帳號

2. **建立新倉庫（Repository）**
   - 點擊右上角的 `+` 號
   - 選擇「New repository」

3. **設定倉庫資訊**
   ```
   Repository name: 3d-skybox-generator
   Description: 🌐 亮言~3D環景球生成器 - 輕鬆將360°全景圖轉換成VR環景球GLB檔案

   Public: ✅ （公開）
   或
   Private: ☑️ （私人，僅課程學員）

   ⚠️ 重要：不要勾選以下選項
   ❌ Add a README file
   ❌ Add .gitignore
   ❌ Choose a license
   （因為我們已經建立好了）
   ```

4. **點擊「Create repository」**

### 步驟 2：連結本地倉庫到 GitHub

建立完成後，GitHub 會顯示指令。**請在命令提示字元執行以下指令：**

#### 方法 A：使用 HTTPS（推薦）

```bash
cd D:\程式\環景球

# 添加遠端倉庫（請替換 YOUR_USERNAME 為您的 GitHub 使用者名稱）
git remote add origin https://github.com/YOUR_USERNAME/3d-skybox-generator.git

# 設定主分支名稱
git branch -M main

# 推送到 GitHub
git push -u origin main
```

#### 方法 B：使用 SSH（需要先設定 SSH Key）

```bash
cd D:\程式\環景球

# 添加遠端倉庫
git remote add origin git@github.com:YOUR_USERNAME/3d-skybox-generator.git

# 設定主分支名稱
git branch -M main

# 推送到 GitHub
git push -u origin main
```

### 步驟 3：驗證上傳成功

1. **檢查 GitHub 頁面**
   - 前往 `https://github.com/YOUR_USERNAME/3d-skybox-generator`
   - 應該可以看到所有檔案
   - README.md 會自動顯示在頁面下方

2. **確認檔案完整性**
   - 檢查是否有 10 個檔案
   - 確認 README.md 顯示正常
   - 查看 logo.png 和作者資訊.png 是否正確顯示

---

## 🔄 後續更新流程

如果需要更新專案，請執行：

```bash
cd D:\程式\環景球

# 查看變更
git status

# 添加變更的檔案
git add .

# 提交變更
git commit -m "描述您的變更"

# 推送到 GitHub
git push
```

---

## 📝 完整指令範例

假設您的 GitHub 使用者名稱是 `aliang-teacher`，完整指令如下：

```bash
# 1. 切換到專案目錄
cd D:\程式\環景球

# 2. 添加遠端倉庫
git remote add origin https://github.com/aliang-teacher/3d-skybox-generator.git

# 3. 設定主分支
git branch -M main

# 4. 推送到 GitHub
git push -u origin main
```

**執行後會要求輸入 GitHub 帳號密碼或 Personal Access Token。**

---

## 🔑 GitHub 認證方式

### 方法 1：Personal Access Token（推薦）

1. **建立 Token**
   - 前往 GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
   - 點擊「Generate new token」
   - 勾選 `repo` 權限
   - 複製產生的 Token（只會顯示一次！）

2. **使用 Token 推送**
   - 當執行 `git push` 時
   - Username: 您的 GitHub 使用者名稱
   - Password: 貼上您的 Personal Access Token

### 方法 2：GitHub Desktop（最簡單）

1. **下載並安裝 GitHub Desktop**
   - 前往 [https://desktop.github.com/](https://desktop.github.com/)
   - 下載並安裝

2. **開啟專案**
   - File → Add local repository
   - 選擇 `D:\程式\環景球`

3. **推送到 GitHub**
   - Repository → Repository settings → Remote
   - 點擊「Publish repository」
   - 選擇公開或私人
   - 點擊「Publish Repository」

---

## 📋 檢查清單

上架前請確認：

- [ ] README.md 內容完整且格式正確
- [ ] 所有必要檔案都已添加
- [ ] .gitignore 正確排除不必要的檔案
- [ ] 已在 GitHub 建立新倉庫
- [ ] 已連結遠端倉庫
- [ ] 已成功推送到 GitHub
- [ ] GitHub 頁面顯示正常

---

## ⚠️ 注意事項

### 關於授權

本專案設定為「阿亮老師課程學員專用」，建議：

1. **Private Repository（私人倉庫）**
   - 僅課程學員可見
   - 需要邀請成員才能存取

2. **Public Repository（公開倉庫）**
   - 所有人可見
   - 在 README.md 中已明確標註授權限制
   - 適合作為教學範例展示

請根據您的需求選擇合適的可見性設定。

### 關於大型檔案

目前專案中最大的檔案：
- `logo.png` - 7.2MB
- `作者資訊.png` - 2.1MB

這些檔案大小在 GitHub 允許範圍內（單檔 < 100MB）。

如果未來需要更大的檔案，可以考慮使用 Git LFS（Large File Storage）。

---

## 🎉 完成！

上架成功後，您的專案網址將是：

```
https://github.com/YOUR_USERNAME/3d-skybox-generator
```

其他人可以透過以下方式取得專案：

```bash
git clone https://github.com/YOUR_USERNAME/3d-skybox-generator.git
```

或直接下載 ZIP：

```
https://github.com/YOUR_USERNAME/3d-skybox-generator/archive/refs/heads/main.zip
```

---

## 📞 需要協助？

如遇到問題，可以：

1. 查看 [GitHub 官方文件](https://docs.github.com/)
2. 使用 GitHub Desktop（圖形化介面更簡單）
3. 聯繫作者：3a01chatgpt@gmail.com

---

**祝上架順利！🚀**
