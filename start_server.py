#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
亮言~3D環景球生成器 - 伺服器啟動程式
"""

import http.server
import socketserver
import os
import sys
import webbrowser
from pathlib import Path

# 設定編碼為 UTF-8
if sys.platform == 'win32':
    import locale
    if sys.stdout.encoding != 'utf-8':
        sys.stdout.reconfigure(encoding='utf-8')

PORT = 9527
DIRECTORY = Path(__file__).parent

class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    """自訂 HTTP 請求處理器，隱藏詳細日誌"""

    def log_message(self, format, *args):
        """覆寫日誌方法，只顯示簡化資訊"""
        # 只在終端顯示簡化的訊息
        if args[1] == '200':
            print(f"✓ 已載入: {args[0]}")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(DIRECTORY), **kwargs)

def clear_screen():
    """清除終端畫面"""
    os.system('cls' if os.name == 'nt' else 'clear')

def print_banner():
    """顯示啟動橫幅"""
    print("=" * 60)
    print("  亮言~3D環景球生成器")
    print("  伺服器啟動程式")
    print("=" * 60)
    print()

def print_instructions():
    """顯示使用說明"""
    print("✓ 伺服器啟動成功！")
    print()
    print("=" * 60)
    print("  請按照以下步驟操作：")
    print("=" * 60)
    print()
    print("  1️⃣  開啟瀏覽器（建議使用 Chrome）")
    print()
    print("  2️⃣  在網址列輸入以下網址：")
    print()
    print(f"     👉 http://localhost:{PORT}/index.html")
    print()
    print("  3️⃣  開始使用環景球生成器！")
    print()
    print("=" * 60)
    print()
    print("💡 提示：")
    print(f"   • 伺服器執行中，請保持此視窗開啟")
    print(f"   • 按 Ctrl+C 可停止伺服器")
    print(f"   • 關閉此視窗也會停止伺服器")
    print()
    print("=" * 60)
    print()
    print("📝 伺服器運作日誌：")
    print()

def start_server():
    """啟動 HTTP 伺服器"""
    try:
        with socketserver.TCPServer(("", PORT), CustomHTTPRequestHandler) as httpd:
            clear_screen()
            print_banner()
            print_instructions()

            # 嘗試自動開啟瀏覽器（可選）
            # webbrowser.open(f'http://localhost:{PORT}/index.html')

            # 啟動伺服器
            httpd.serve_forever()

    except KeyboardInterrupt:
        print("\n")
        print("=" * 60)
        print("  ⚠️  伺服器已停止")
        print("=" * 60)
        print()
        sys.exit(0)
    except OSError as e:
        if e.errno == 10048 or 'Address already in use' in str(e):
            print("\n")
            print("=" * 60)
            print(f"  ❌ 錯誤：端口 {PORT} 已被佔用")
            print("=" * 60)
            print()
            print("解決方法：")
            print(f"  1. 關閉其他使用端口 {PORT} 的程式")
            print(f"  2. 或修改 start_server.py 中的 PORT 變數")
            print()
            sys.exit(1)
        else:
            raise

if __name__ == "__main__":
    start_server()
