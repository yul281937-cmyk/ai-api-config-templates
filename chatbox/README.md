# ChatBox 接入配置

[ChatBox](https://chatboxai.app/) 是跨平台 AI 客户端（Windows / macOS / Linux / iOS / Android / Web），支持自定义 [OI] 兼容接口。

## 配置步骤

1. 下载安装 ChatBox：https://chatboxai.app/
2. 打开 **设置 → 模型 → 添加自定义提供方**（选择 [OI] API 兼容）
3. 填写：

   | 配置项 | 填写内容 |
   |---|---|
   | API Host | `https://caapi.top/v1` |
   | API Key | 控制台创建的 `sk-` 开头密钥 |
   | 模型 | 手动填写模型名（见下方示例） |

4. 保存后回到对话页，选择该自定义模型即可使用

## 在售模型 id 示例

> 40+ 模型的完整列表与实时价格见 https://caapi.top/models ：

| 模型 | model 字段示例 |
|---|---|
| GPT-6 Astra | `gpt-6-astra` |
| Claude Fable 5.1 / Opus 5 | `claude-fable-5-1` / `claude-opus-5` |
| GPT-5.6 Luna | `gpt-5.6-luna` |
| Gemini 3.6 Flash | `gemini-3.6-flash` |
| DeepSeek V4 Flash | `deepseek-v4-flash` |
| GLM-5.3 Flash | `glm-5.3-flash` |

## 常见问题

- **请求 404**：API Host 必须带 `/v1`，即 `https://caapi.top/v1`
- **401**：Key 填写有误，检查前后空格
- **model not found**：模型 id 以模型广场显示为准，直接复制粘贴最稳妥
