# AI API 配置模板库

主流 AI 客户端与 SDK 接入 [CA云上创造](https://caapi.top) 的配置模板集合。

一个 API Key 即可调用 **40+ 主流大模型**（GPT-6、Claude、Gemini、DeepSeek、GLM、Grok…），[OI] 兼容接口——改个接口地址就能跑，不用折腾环境。实时折扣低至 0.8 折，按量计费无月费。

## 支持的客户端 / SDK

| 客户端 / SDK | 配置模板 | 上手时间 |
|---|---|---|
| Cherry Studio | [cherry-studio/](./cherry-studio) | ⭐ 约 2 分钟 |
| ChatBox | [chatbox/](./chatbox) | ⭐ 约 2 分钟 |
| NextChat | [nextchat/](./nextchat) | ⭐⭐ 约 3 分钟 |
| Python（openai SDK） | [openai-sdk/python/](./openai-sdk/python) | ⭐⭐ |
| Node.js（openai SDK） | [openai-sdk/node/](./openai-sdk/node) | ⭐⭐ |
| curl 快速测试 | [curl/](./curl) | ⭐ |

## 通用三步接入

1. **注册并获取 Key**：前往 [caapi.top](https://caapi.top) 注册，在控制台创建 API Key（`sk-` 开头），新建 Key 时可选「省低价」或「快精品」线路
2. **替换接口地址**：把客户端中的 API 地址改为 `https://caapi.top/v1`，Key 填入 `sk-...`
3. **填模型名**：从[模型广场](https://caapi.top/models)复制模型 id 填入客户端

> 任何支持「自定义 [OI] 接口 / [OI] Compatible」的客户端都可以按同样思路接入。

## 在售模型（节选）

> 完整列表（40+ 模型）与实时价格以 [caapi.top/models](https://caapi.top/models) 为准，价格按上游折扣逐小时刷新：

| 模型 | model 字段 |
|---|---|
| GPT-6 Astra（[OI] 旗舰） | `gpt-6-astra` |
| GPT-5.6 Luna / Terra / Sol | `gpt-5.6-luna` / `gpt-5.6-terra` / `gpt-5.6-sol` |
| Gemini 3.6 / 3.7 / 3.8 Flash | `gemini-3.6-flash` 等 |
| DeepSeek V4 Flash / Pro | `deepseek-v4-flash` / `deepseek-v4-pro` |
| GLM-5.3 Flash（另有 0.01 折福利版） | `glm-5.3-flash` / `glm-5.3-flash-free` |
| Grok 4.6 | `grok-4.6` |
| Claude Fable 5.1 / Fable 5 / Opus 5 | `claude-fable-5-1` / `claude-fable-5` / `claude-opus-5` |

## 常见问题排查

| 现象 | 原因与解决 |
|---|---|
| `401 Unauthorized` | API Key 填错或多了空格；使用 SDK / curl 时注意 `Bearer ` 前缀 |
| `model not found` / 无此模型 | 模型名拼写错误，以 [caapi.top/models](https://caapi.top/models) 页面为准（可直接点「复制 id」） |
| `404 Not Found` | 接口地址多填或少填了 `/v1`，见各客户端模板中的说明 |
| 余额不足 | 前往控制台充值后重试；上游错误、无 token 消耗的请求不计费 |
| 响应很慢 | 先用 [curl/quick-test.sh](./curl/quick-test.sh) 直连排除客户端因素；或新建 Key 切换「快精品」线路 |

## License

[MIT](./LICENSE)
