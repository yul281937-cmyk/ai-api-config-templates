# AI API 配置模板库

主流 AI 客户端与 SDK 接入 [CA云上创造](https://caapi.top) 的配置模板集合。

一个 API Key 即可调用 Claude、GPT、Gemini、DeepSeek 等主流大模型，OpenAI 兼容接口——改个接口地址就能跑，不用折腾环境。

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

1. **注册并获取 Key**：前往 [caapi.top](https://caapi.top) 注册，在控制台创建 API Key（`sk-` 开头）
2. **替换接口地址**：把客户端中的 API 地址改为网关地址，Key 填入 `sk-...`
3. **填模型名**：从[模型列表](https://caapi.top/models)选择模型名填入客户端

> 任何支持「自定义 OpenAI 接口 / OpenAI Compatible」的客户端都可以按同样思路接入。

## 常见问题排查

| 现象 | 原因与解决 |
|---|---|
| `401 Unauthorized` | API Key 填错或多了空格；使用 SDK / curl 时注意 `Bearer ` 前缀 |
| `model not found` / 无此模型 | 模型名拼写错误，以 [caapi.top/models](https://caapi.top/models) 页面为准 |
| `404 Not Found` | 接口地址多填或少填了 `/v1`，见各客户端模板中的说明 |
| 余额不足 | 前往控制台充值后重试 |
| 响应很慢 | 先用 [curl/quick-test.sh](./curl/quick-test.sh) 直连排除客户端因素 |

## 模型与价格

所有模型的计费倍率公开透明，按量计费，详见 [caapi.top/models](https://caapi.top/models)。

## License

[MIT](./LICENSE)
