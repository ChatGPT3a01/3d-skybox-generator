@echo off
chcp 65001 >nul
color 0B
cls

echo ========================================
echo   GitHub 上傳輔助工具
echo ========================================
echo.
echo 📝 請先確認您已完成以下步驟：
echo   1. 已在 GitHub 建立新倉庫
echo   2. 倉庫名稱建議為：3d-skybox-generator
echo   3. 建立時不要勾選 README、.gitignore、License
echo.
pause
echo.

echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo   請輸入您的 GitHub 資訊
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.

set /p username="請輸入您的 GitHub 使用者名稱: "
echo.

echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo   正在設定遠端倉庫...
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.

git remote add origin https://github.com/%username%/3d-skybox-generator.git

if %errorlevel% neq 0 (
    echo.
    echo ⚠️ 遠端倉庫已存在，跳過此步驟...
    echo.
) else (
    echo ✓ 遠端倉庫設定成功！
    echo.
)

echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo   正在推送到 GitHub...
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.
echo ⚠️ 接下來會要求輸入您的 GitHub 認證資訊：
echo   - Username: %username%
echo   - Password: 您的 Personal Access Token
echo.
echo 💡 如果沒有 Token，請前往：
echo    https://github.com/settings/tokens
echo.
pause
echo.

git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    echo   🎉 上傳成功！
    echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    echo.
    echo 您的專案網址：
    echo https://github.com/%username%/3d-skybox-generator
    echo.
) else (
    echo.
    echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    echo   ❌ 上傳失敗
    echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    echo.
    echo 可能的原因：
    echo   1. 認證資訊錯誤
    echo   2. 倉庫名稱不正確
    echo   3. 沒有網路連線
    echo.
    echo 請查看 GitHub上架指南.md 取得詳細說明
    echo.
)

pause
