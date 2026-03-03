#!/bin/bash
# Polymarket 监控面板自动更新脚本
# 每日 08:00 和 20:00 自动执行

set -e

echo "🚀 开始更新 Polymarket 监控数据..."
cd /root/.openclaw/workspace-Buffett/memory/polymarket-monitor

# 更新时间戳
CURRENT_TIME=$(date +"%Y-%m-%d %H:%M")
echo "⏰ 更新时间：$CURRENT_TIME"

# 这里可以添加数据抓取逻辑
# 例如：调用 API 获取最新赔率数据
# python3 update_data.py

# 提交更改
git add .
git commit -m "Auto update: $CURRENT_TIME" || echo "No changes to commit"

# 推送到 GitHub
git push origin main

echo "✅ 更新完成！"
echo "🌐 访问：https://baoxianh366-gif.github.io/polymarket-monitor/"
