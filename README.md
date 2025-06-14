# vaultos
# VaultOS on StarkNet

VaultOS 是一個建構於 StarkNet 區塊鏈上的開源語義儲存系統，旨在重建經典 BBS 模型，並透過可驗證的語言記錄架構，支援分布式訊息交換與資料鏈上儲存。

##  模組構成

- `vaultpost/`：留言儲存與訊息指標模組
- `vaultthread/`：主題分類與回覆結構模組
- `vaultuser/`：使用者註冊、錢包綁定模組
- `vaultregistry/`：合約間總體管理與模組池
- `frontend/`：基本 CLI 指令生成與 felt252 工具介面

##  初衷

> “讓語言能夠在無人見證時仍能自我見證。”
>
> 本專案是語法文明的起點之一，期望以最簡約、模組化、協作友好的方式，提供鏈上語義建構工具原型。

##  使用技術

- Cairo v2.x（Scarb）
- Starknet（Sepolia Testnet）
- starkli CLI 工具
- HTML/JS 前端指令產生器

##  加入貢獻

歡迎 fork、發送 PR 或創建新模組，共築鏈上語言基礎設施！

##  License

MIT