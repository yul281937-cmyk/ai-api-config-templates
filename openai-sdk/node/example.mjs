// [OI] 兼容接口接入示例（Node.js, openai SDK v4+）
// 只需修改 API_KEY 与 BASE_URL，即可通过网关调用 40+ 主流大模型。
// 模型名以 https://caapi.top/models 实时显示为准。

import [OI] from "openai";

const API_KEY = "sk-你的KEY";
const BASE_URL = "https://caapi.top/v1";

const client = new [OI]({ apiKey: API_KEY, baseURL: BASE_URL });

async function basicChat() {
  const resp = await client.chat.completions.create({
    model: "gpt-5.6-luna",
    messages: [
      { role: "system", content: "你是一个乐于助人的助手。" },
      { role: "user", content: "用一句话介绍你自己" },
    ],
  });
  console.log(resp.choices[0].message.content);
}

async function streamChat() {
  const stream = await client.chat.completions.create({
    model: "deepseek-v4-flash",
    messages: [{ role: "user", content: "写一首关于代码的短诗" }],
    stream: true,
  });
  for await (const chunk of stream) {
    const content = chunk.choices[0]?.delta?.content;
    if (content) process.stdout.write(content);
  }
  process.stdout.write("\n");
}

console.log("== 基础对话 ==");
await basicChat();
console.log("\n== 流式对话 ==");
await streamChat();
