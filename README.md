# 🌐 亮言~3D環景球生成器

一個簡單易用的工具，讓您輕鬆將 360° 全景圖轉換成 VR 環境支援的 GLB 格式環景球。

![專案 Logo](logo.png)

---

## 🚀 快速開始

### 雲端版本（推薦）⭐

**無需安裝，點擊即用！**

👉 **[立即使用雲端版本](https://chatgpt3a01.github.io/3d-skybox-generator/)**

- ✅ 無需安裝 Python
- ✅ 無需下載檔案
- ✅ 任何裝置都能使用
- ✅ 開啟網頁即可使用

### 本地端版本

如果您偏好本地端執行，或需要離線使用，請參考下方的[安裝步驟](#-安裝步驟)。

---

## ✨ 功能特點

- 🖼️ **簡單上傳** - 支援拖曳或點擊上傳 360° 全景圖（JPG、PNG）
- 🔄 **一鍵生成** - 自動整合環景球模板，快速生成 GLB 檔案
- 👁️ **即時預覽** - 上傳後立即預覽圖片效果
- 💾 **自動下載** - 生成完成自動下載 skybox.glb 檔案
- ☁️ **雲端 + 本地** - 提供雲端版本（免安裝）和本地端版本（離線使用）
- 🎨 **精美介面** - 啟動畫面 + 漸層紫藍配色 + 流暢動畫

## 🎯 適用場景

- ✅ VR 虛擬展覽空間背景
- ✅ 元宇宙平台環境設計
- ✅ 3D 遊戲天空盒
- ✅ 建築可視化環境
- ✅ 360° 全景照片展示
- ✅ AI 生成場景快速預覽

## 💻 系統需求

### 雲端版本
- **瀏覽器**：Chrome、Edge、Firefox、Safari（建議使用 Chrome）
- **網路連線**：需要網際網路連線

### 本地端版本
- **作業系統**：Windows、macOS、Linux
- **瀏覽器**：Chrome、Edge、Firefox、Safari（建議使用 Chrome）
- **Python**：3.x 版本（用於啟動本地伺服器）

## 📥 安裝步驟（本地端版本）

> 💡 **提示**：如果您想直接使用，請訪問[雲端版本](https://chatgpt3a01.github.io/3d-skybox-generator/)，無需安裝！

### 1. 下載專案

**方法 A：使用 Git Clone（推薦）**
```bash
git clone https://github.com/ChatGPT3a01/3d-skybox-generator.git
cd 3d-skybox-generator
```

**方法 B：直接下載 ZIP**
1. 點擊右上角綠色「Code」按鈕
2. 選擇「Download ZIP」
3. 解壓縮到任意位置

### 2. 確認 Python 已安裝

在終端機或命令提示字元輸入：
```bash
python --version
```

如果顯示版本號（例如：`Python 3.10.11`），表示已安裝。

如果未安裝，請前往 [Python 官網](https://www.python.org/downloads/) 下載並安裝。

**⚠️ 安裝時請務必勾選「Add Python to PATH」**

## 🚀 使用方法

### 雲端版本（最簡單 ⭐）

直接訪問：**[https://chatgpt3a01.github.io/3d-skybox-generator/](https://chatgpt3a01.github.io/3d-skybox-generator/)**

開啟網頁後即可直接使用，無需任何設定！

---

### 本地端版本

如果您已下載專案到本地，請使用以下方法啟動：

#### 方法 1：一鍵啟動（Windows 推薦）

1. **雙擊執行 `啟動伺服器.bat` 檔案**
2. **會自動開啟命令視窗並顯示：**
   ```
   ========================================
     亮言~3D環景球生成器
     伺服器啟動程式
   ========================================

   ✓ 伺服器啟動成功！

   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
     請在瀏覽器開啟以下網址：

     http://localhost:9527/index.html
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   ```
3. **複製網址到瀏覽器開啟**
4. **開始使用！**

#### 方法 2：手動啟動（全平台適用）

1. **開啟終端機（Terminal）或命令提示字元（CMD）**
2. **切換到專案目錄**
   ```bash
   cd /path/to/3d-skybox-generator
   ```
3. **啟動本地伺服器**
   ```bash
   python -m http.server 9527
   ```
4. **在瀏覽器開啟**
   ```
   http://localhost:9527/index.html
   ```

### 停止伺服器

- 按 `Ctrl + C` 或直接關閉終端機視窗

## 📝 操作流程

### 三步驟輕鬆完成

1. **啟動伺服器** 🚀
   - 雙擊 `啟動伺服器.bat`（Windows）
   - 或手動執行 `python -m http.server 9527`

2. **上傳全景圖** 🖼️
   - 開啟瀏覽器訪問 `http://localhost:9527/index.html`
   - 等待 4 秒啟動畫面
   - 確認環景球模板載入成功
   - 點擊或拖曳上傳您的 360° 全景圖

3. **生成 GLB** 💾
   - 預覽圖片確認無誤
   - 點擊「🚀 生成 GLB 檔案」按鈕
   - 自動下載 `skybox.glb` 檔案
   - 完成！可上傳到 VR 編輯器使用

## 🎨 支援的圖片格式

### 圖片類型
- ✅ JPEG / JPG
- ✅ PNG

### 推薦規格
- **投影類型**：等距圓柱投影（Equirectangular）
- **長寬比**：2:1（例如：4096×2048、8192×4096）
- **解析度**：建議 4K 以上
- **檔案大小**：建議小於 10MB

### 什麼是等距圓柱投影？

等距圓柱投影是將球形的 360° 全景圖展開成平面矩形的方式，就像世界地圖一樣。

特徵：
- 長度是高度的兩倍（2:1 比例）
- 上下部分（天空和地面）會有拉伸變形
- 中間部分（視線水平）較正常

## 🎮 支援的 VR 平台

已測試可用的平台：
- ✅ **Makar XR** - No-code XR 平台，支援 AR/VR/MR 內容創建
- ✅ **Spatial** - 虛擬空間創建平台
- ✅ **Mozilla Hubs** - 開源 VR 社交平台
- ✅ **VRChat** - VR 社交遊戲
- ✅ **Unity** - 遊戲引擎（需匯入為 Skybox）
- ✅ **Unreal Engine** - 遊戲引擎
- ✅ **Blender** - 3D 建模軟體

## 📂 專案結構

```
3d-skybox-generator/
├── index.html                      # 主程式
├── 啟動伺服器.bat                  # Windows 一鍵啟動腳本
├── logo.png                        # 啟動畫面 Logo
├── 作者資訊.png                    # 作者照片
├── Spatial Skybox Sample.gltf      # 環景球模板
├── Spatial Skybox Sample.bin       # 幾何數據
├── texture.jpg                     # 範例全景圖
├── 操作步驟.md                     # 詳細操作說明
├── GitHub上架指南.md               # GitHub 上架教學
├── 上傳到GitHub.bat                # GitHub 上傳輔助工具（開發者用）
├── README.md                       # 本文件
└── .gitignore                      # Git 忽略檔案配置
```

## 🛠️ 技術堆疊

- **Three.js** (v0.160.0) - 3D 圖形庫
- **GLTFLoader** - glTF 格式載入器
- **GLTFExporter** - GLB 格式導出器
- **HTML5** / **CSS3** / **JavaScript** - 前端技術
- **Python HTTP Server** - 本地伺服器

## ❓ 常見問題

### Q: 為什麼不能直接雙擊開啟 HTML？

A: 由於瀏覽器的 CORS 安全限制，必須透過本地伺服器才能正常載入檔案。

### Q: 端口 9527 被佔用怎麼辦？

A: 可以改用其他端口，例如：
```bash
python -m http.server 7777
```
然後訪問 `http://localhost:7777/index.html`

### Q: 生成的 GLB 檔案很大怎麼辦？

A: 建議先壓縮原始圖片，或降低圖片解析度。推薦使用 4K（4096×2048）就有很好的效果。

### Q: 支援哪些 360° 圖片來源？

A:
- 360° 相機拍攝（Ricoh Theta、Insta360 等）
- AI 生成（Skybox AI、Midjourney 等）
- 全景圖拼接軟體（PTGui、Hugin 等）
- 免費素材網站（Poly Haven、HDRIHaven 等）

更多問題請參考 [操作步驟.md](操作步驟.md) 文件。

## 💡 使用技巧

1. **快速測試**：先用小尺寸圖片測試流程
2. **批次處理**：依序上傳多張圖片，記得重新命名下載的檔案
3. **效果預覽**：使用 [glTF Viewer](https://gltf-viewer.donmccurdy.com/) 線上預覽 GLB
4. **備份模板**：建議備份 Sample.gltf 和 Sample.bin 檔案

## 🔄 更新日誌

### v1.0.0 (2026-01-13)
- ✨ 首次發布
- ✨ 支援 JPG、PNG 格式上傳
- ✨ 自動載入環景球模板
- ✨ 一鍵生成 GLB 檔案
- ✨ 圖片預覽功能
- ✨ 精美啟動畫面
- ✨ 完整錯誤提示
- ✨ 一鍵啟動腳本（Windows）

## 👨‍🏫 關於作者

### 曾慶良 主任（阿亮老師）

![作者資訊](作者資訊.png)

**現任職務：**
- 📌 新興科技推廣中心主任
- 📌 教育部學科中心所長教師
- 📌 臺北市語文學習領域輔導員

**獲獎紀錄：**
- 🏆 2024年 獲教育部人工智慧講師認證
- 🏆 2022、2023年 指導學生XR專題競賽獲特優
- 🏆 2022年 獲VR教材開發教師組特優
- 🏆 2019年 獲百大資訊人才獎
- 🏆 2018、2019年 蟬聯天下創新100教師
- 🏆 2018年 臺北市特殊優良教師
- 🏆 2017年 教育部行動學習優等

### 📞 聯絡方式

- **YouTube 頻道**：[@Liang-yt02](https://www.youtube.com/@Liang-yt02)
- **3A科技研究社**：[Facebook 社團](https://www.facebook.com/groups/2754139931432955)
- **課程、研習邀約**：3a01chatgpt@gmail.com

## 📜 授權聲明

**© 2026 阿亮老師 版權所有**

本專案僅供「阿亮老師課程學員」學習使用。

### ⚠️ 禁止事項

- ❌ 禁止修改本專案內容
- ❌ 禁止轉傳或散布
- ❌ 禁止商業使用
- ❌ 禁止未經授權之任何形式使用

如有任何授權需求，請聯繫作者。

## 🙏 致謝

感謝以下開源專案：
- [Three.js](https://threejs.org/) - 強大的 3D 圖形庫
- [glTF](https://www.khronos.org/gltf/) - 3D 模型交換格式標準

## 📌 相關連結

- [詳細操作說明](操作步驟.md)
- [Three.js 官方文件](https://threejs.org/docs/)
- [glTF 格式規範](https://www.khronos.org/gltf/)
- [Poly Haven - 免費 HDRIs](https://polyhaven.com/hdris)

---

<div align="center">

**如果這個工具對您有幫助，歡迎給個 ⭐ Star！**

Made with ❤️ by 阿亮老師

[回到頂部](#-亮言3d環景球生成器)

</div>
