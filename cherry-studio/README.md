# Cherry Studio 接入配置

[Cherry Studio](https://cherry-ai.com/) 是开源的多模型桌面客户端（Windows / macOS / Linux），内置知识库、绘画等功能，支持自定义 OpenAI 兼容接口。

## 配置步骤

1. 下载安装 Cherry Studio：https://cherry-ai.com/
2. 打开 **设置 → 模型服务 → 添加自定义提供商**（OpenAI API 兼容）
3. 填写两项核心配置：

   | 配置项 | 填写内容 |
   |---|---|
   | API 地址（Base URL） | `https://caapi.top/v1` |
   | API Key | 控制台创建的 `sk-` 开头密钥 |

4. 点击 **管理 / 获取模型列表**，或手动添加模型（模型名以 https://caapi.top/models 为准）
5. 回到对话页，右下角选择模型即可开始使用

## 常用模型名示例

> 模型名以 [模型列表页](https://caapi.top/models) 实时显示为准，以下仅为常见命名示例：

| 模型 | model 字段示例 |
|---|---|
| GPT-4o | `gpt-4o` |
| Claude Sonnet | `claude-sonnet-4-5` |
| Gemini Pro | `gemini-2.5-pro` |
| DeepSeek V3 | `deepseek-chat` |

## 常见问题

- **获取模型列表失败**：检查 API 地址是否为 `https://caapi.top/v1`（带 `/v1`），Key 是否有效
- **添加模型后无响应**：确认模型名拼写与模型列表页完全一致
