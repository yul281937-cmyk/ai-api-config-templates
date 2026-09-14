# NextChat 接入配置

[NextChat](https://github.com/ChatGPTNextWeb/NextChat)（ChatGPT-Next-Web）是流行的开源 Web / 桌面客户端，支持自定义 OpenAI 接口。

## 配置步骤

1. 打开 NextChat，进入 **设置**
2. 找到 **自定义接口** 区域并开启，填写：

   | 配置项 | 填写内容 |
   |---|---|
   | 接口地址（Endpoint） | `https://caapi.top` |
   | API Key | 控制台创建的 `sk-` 开头密钥 |

3. 在 **自定义模型名** 中填写要使用的模型（逗号分隔可填多个），例如：

   ```
   gpt-4o,claude-sonnet-4-5,deepseek-chat
   ```

4. 保存后回到对话页，选择模型开始使用

## 常见问题

- **请求报 404**：不同版本的 NextChat 拼接路径行为略有差异——如果 `https://caapi.top` 报 404，改为 `https://caapi.top/v1` 再试（反之亦然）
- **模型列表为空**：手动在「自定义模型名」中填入模型名即可，不依赖自动拉取
- **自部署用户**：也可以通过环境变量 `BASE_URL` 和 `OPENAI_API_KEY` 配置后端代理

## 模型名说明

模型名以 https://caapi.top/models 实时显示为准。
