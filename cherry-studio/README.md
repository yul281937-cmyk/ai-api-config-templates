# Cherry Studio 接入配置

[Cherry Studio](https://cherry-ai.com/) 是开源的多模型桌面客户端（Windows / macOS / Linux），内置知识库、绘画等功能，支持自定义 [OI] 兼容接口。

## 配置步骤

1. 下载安装 Cherry Studio：https://cherry-ai.com/
2. 打开 **设置 → 模型服务 → 添加自定义提供商**（[OI] API 兼容）
3. 填写两项核心配置：

   | 配置项 | 填写内容 |
   |---|---|
   | API 地址（Base URL） | `https://caapi.top/v1` |
   | API Key | 控制台创建的 `sk-` 开头密钥 |

4. 点击 **管理 / 获取模型列表**，或手动添加模型（模型名以 https://caapi.top/models 为准）
5. 回到对话页，右下角选择模型即可开始使用

## 在售模型 id 示例

> 40+ 模型的完整列表与实时价格见 [模型广场](https://caapi.top/models)，可直接点「复制 id」：

| 模型 | model 字段示例 |
|---|---|
| GPT-6 Astra | `gpt-6-astra` |
| Claude Fable 5.1 / Opus 5 | `claude-fable-5-1` / `claude-opus-5` |
| GPT-5.6 Luna | `gpt-5.6-luna` |
| Gemini 3.6 Flash | `gemini-3.6-flash` |
| DeepSeek V4 Flash | `deepseek-v4-flash` |
| GLM-5.3 Flash（0.01 折福利版） | `glm-5.3-flash-free` |
| Grok 4.6 | `grok-4.6` |

## 常见问题

- **获取模型列表失败**：检查 API 地址是否为 `https://caapi.top/v1`（带 `/v1`），Key 是否有效
- **添加模型后无响应**：确认模型名拼写与模型广场完全一致（建议直接用「复制 id」按钮）
