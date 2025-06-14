#!/bin/bash

git add .
git commit -m "自動更新 $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
echo " 同步完成！請查看 https://github.com/niclanleo/vaultos"
