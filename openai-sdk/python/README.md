# Python SDK 接入示例

使用官方 `openai` SDK，只需改 `base_url` 和 `api_key` 两个参数。

## 安装

```bash
pip install openai
```

## 基础对话示例

```python
from openai import OpenAI

client = OpenAI(
    api_key="sk-你的KEY",          # 控制台创建的 API Key
    base_url="https://caapi.top/v1",  # 替换为网关地址
)

resp = client.chat.completions.create(
    model="gpt-4o",                # 模型名以 https://caapi.top/models 为准
    messages=[
        {"role": "system", "content": "你是一个乐于助人的助手。"},
        {"role": "user", "content": "用一句话介绍你自己"},
    ],
)
print(resp.choices[0].message.content)
```

## 流式输出示例

```python
from openai import OpenAI

client = OpenAI(
    api_key="sk-你的KEY",
    base_url="https://caapi.top/v1",
)

stream = client.chat.completions.create(
    model="deepseek-chat",
    messages=[{"role": "user", "content": "写一首关于代码的短诗"}],
    stream=True,
)

for chunk in stream:
    delta = chunk.choices[0].delta
    if delta.content:
        print(delta.content, end="", flush=True)
print()
```

## 运行

```bash
python example.py
```

> 完整的可运行文件见本目录下的 [example.py](./example.py)（含基础对话 + 流式输出两个函数）。
