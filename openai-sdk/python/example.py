"""OpenAI 兼容接口接入示例。

只需修改 API_KEY 与 BASE_URL，即可通过网关调用 Claude / GPT / Gemini / DeepSeek 等模型。
模型名以 https://caapi.top/models 实时显示为准。
"""

from openai import OpenAI

API_KEY = "sk-你的KEY"
BASE_URL = "https://caapi.top/v1"

client = OpenAI(api_key=API_KEY, base_url=BASE_URL)


def basic_chat() -> None:
    """基础对话：一次性返回完整结果。"""
    resp = client.chat.completions.create(
        model="gpt-4o",
        messages=[
            {"role": "system", "content": "你是一个乐于助人的助手。"},
            {"role": "user", "content": "用一句话介绍你自己"},
        ],
    )
    print(resp.choices[0].message.content)


def stream_chat() -> None:
    """流式对话：逐 token 打印。"""
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


if __name__ == "__main__":
    print("== 基础对话 ==")
    basic_chat()
    print("\n== 流式对话 ==")
    stream_chat()
