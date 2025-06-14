#!/bin/bash
cd "$(dirname "$0")"

echo " 準備同步專案到 GitHub..."
git init
git add .
git commit -m "自動更新 $(date '+%Y-%m-%d %H:%M:%S')"
git branch -M main
git remote add origin https://github.com/niclanleo/vaultos.git
git push -u origin main

echo " 同步完成！請查看 https://github.com/niclanleo/vaultos"
