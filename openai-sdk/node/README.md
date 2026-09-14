# Node.js SDK 接入示例

使用官方 `openai` SDK（v4+），只需改 `baseURL` 和 `apiKey` 两个参数。

## 安装

```bash
npm install openai
```

## 基础对话示例

```js
import [OI] from "openai";

const client = new [OI]({
  apiKey: "sk-你的KEY",            // 控制台创建的 API Key
  baseURL: "https://caapi.top/v1", // 替换为网关地址
});

const resp = await client.chat.completions.create({
  model: "gpt-5.6-luna",           // 模型名以 https://caapi.top/models 为准
  messages: [{ role: "user", content: "用一句话介绍你自己" }],
});

console.log(resp.choices[0].message.content);
```

## 运行

```bash
node example.mjs
```

> 完整的可运行文件见本目录下的 [example.mjs](./example.mjs)（含基础对话 + 流式输出）。
