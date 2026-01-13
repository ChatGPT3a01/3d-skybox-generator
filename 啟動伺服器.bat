@echo off
chcp 65001 >nul
color 0A
cls

echo ========================================
echo   亮言~3D環景球生成器
echo   伺服器啟動程式
echo ========================================
echo.
echo [啟動中] 正在啟動本地伺服器...
echo.

echo ✓ 伺服器啟動成功！
echo.
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo   請在瀏覽器開啟以下網址：
echo.
echo   http://localhost:9527/index.html
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.
echo 💡 提示：
echo   - 按 Ctrl+C 可停止伺服器
echo   - 關閉此視窗也會停止伺服器
echo.
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.

python -m http.server 9527
