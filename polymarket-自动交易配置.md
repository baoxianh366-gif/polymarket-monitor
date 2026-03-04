# Polymarket 自动交易机器人 - 配置与跟踪

**创建日期**：2026 年 2 月 28 日  
**最后更新**：2026 年 2 月 28 日  
**状态**：⏳ 待配置

---

## 📌 背景

用户为 Buffett 安装了 Polymarket BTC 自动交易机器人 skill，位于：
`/root/.openclaw/workspace-dev/polymarket-bot/`

这是一个专为 Polymarket BTC 15 分钟涨跌市场设计的自动交易脚本，支持：
- 实时监控（WebSocket 接入币安 + Polymarket）
- 自动交易（三种触发条件）
- 智能止损
- 自动兑奖
- Web 可视化面板（localhost:5080）

---

## ✅ 已完成

- [x] Skill 已安装到位
- [x] 已阅读 README.md 了解功能
- [x] 已查看 config.env 配置模板
- [x] 已记录到记忆文件

---

## ⏳ 待办事项（用户处理）

| 任务 | 优先级 | 说明 |
|------|--------|------|
| 填写 `PRIVATE_KEY` | ⭐⭐⭐⭐⭐ 钱包私钥（安全存储） |
| 填写 `POLYGON_RPC_URL` | ⭐⭐⭐⭐⭐ Polygon 节点地址 |
| 设置 `TRADE_AMOUNT` | ⭐⭐⭐⭐ 每次交易 USDC 金额 |
| 配置触发条件 | ⭐⭐⭐⭐ 三组时间/价差阈值 |
| 设置止损线 `STOP_LOSS_DIFF` | ⭐⭐⭐⭐ 风控参数 |
| 安装依赖 | ⭐⭐⭐ `pip install -r requirements.txt` |
| 测试运行 | ⭐⭐⭐ 先小额测试 |

---

## 💡 Buffett 可提供的支持

1. **市场信息**：搜索 BTC 相关新闻、预测市场 odds
2. **风险提醒**：重大事件（地缘政治、监管政策）可能影响 BTC 时提醒
3. **交易记录**：在金融日记中增加 Polymarket 交易板块
4. **定期监控**：用 cron 设置定时检查交易状态
5. **配置辅助**：帮助理解参数含义、优化策略

---

## 📋 配置参数说明

### 钱包与网络
| 参数 | 说明 |
|------|------|
| `PRIVATE_KEY` | 钱包私钥（务必妥善保管，不要上传 GitHub） |
| `POLYGON_RPC_URL` | Polygon 节点（可用 Alchemy/Infura 或免费节点） |
| `SIGNATURE_TYPE` | 签名类型，推荐填 `2` (EOA) |

### 交易策略
| 参数 | 说明 |
|------|------|
| `AUTO_TRADE` | `true`=自动下单，`false`=仅监控提醒 |
| `TRADE_AMOUNT` | 每次下单金额（USDC） |
| `CONDITION_X_TIME` | 剩余 X 秒内触发 |
| `CONDITION_X_DIFF` | 价差达到 Y 时触发 |
| `STOP_LOSS_DIFF` | 止损线，价差低于此值自动平仓 |
| `CHECK_INTERVAL` | 价格检查频率（秒） |

---

## 🔐 安全提醒

1. **私钥安全**：不要上传到 GitHub 或分享给他人
2. **资产准备**：确保钱包有足够 USDC（交易）+ MATIC/POL（Gas）
3. **小额测试**：建议先用小额资金测试策略
4. **网络环境**：建议在海外服务器运行，保证连接稳定性

---

## 📊 后续跟踪计划

- [ ] 用户完成配置后，协助测试运行
- [ ] 在每日金融日记中增加「Polymarket 交易记录」板块
- [ ] 设置定期提醒（如每日收盘后检查收益）
- [ ] 跟踪 BTC 预测市场 odds 变化，辅助决策

---

## 📝 备注

- 脚本启动后访问：`http://localhost:5080` 查看 Web 仪表盘
- 用户表示"回头去处理"配置，需等待用户完成后再协助下一步
- 可在下次 heartbeat 或定期提醒用户此待办事项

---

**相关链接**：
- 项目路径：`/root/.openclaw/workspace-dev/polymarket-bot/`
- Polymarket 官网：https://polymarket.com
- BTC 15 分钟市场：https://polymarket.com/event/btc-price-15-min
