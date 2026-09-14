# ChatBox 接入配置

[ChatBox](https://chatboxai.app/) 是跨平台 AI 客户端（Windows / macOS / Linux / iOS / Android / Web），支持自定义 OpenAI 兼容接口。

## 配置步骤

1. 下载安装 ChatBox：https://chatboxai.app/
2. 打开 **设置 → 模型 → 添加自定义提供方**（选择 OpenAI API 兼容）
3. 填写：

   | 配置项 | 填写内容 |
   |---|---|
   | API Host | `https://caapi.top/v1` |
   | API Key | 控制台创建的 `sk-` 开头密钥 |
   | 模型 | 手动填写模型名（见下方示例） |

4. 保存后回到对话页，选择该自定义模型即可使用

## 常用模型名示例

> 模型名以 https://caapi.top/models 实时显示为准：

| 模型 | model 字段示例 |
|---|---|
| GPT-4o | `gpt-4o` |
| Claude Sonnet | `claude-sonnet-4-5` |
| DeepSeek V3 | `deepseek-chat` |

## 常见问题

- **请求 404**：API Host 必须带 `/v1`，即 `https://caapi.top/v1`
- **401**：Key 填写有误，检查前后空格
