#!/usr/bin/env bash
# [OI] 兼容接口快速连通性测试
# 用法：填好 KEY 后执行 bash quick-test.sh

KEY="sk-你的KEY"
BASE="https://caapi.top/v1"   # 以控制台文档页显示的地址为准

echo "== 1. 测试模型列表接口 =="
curl -s "${BASE}/models" \
  -H "Authorization: Bearer ${KEY}" \
  | head -c 500
echo; echo

echo "== 2. 测试对话接口（非流式）=="
curl -s "${BASE}/chat/completions" \
  -H "Authorization: Bearer ${KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-6-astra",
    "messages": [{"role": "user", "content": "ping"}]
  }' | head -c 800
echo; echo

echo "== 3. 测试对话接口（流式）=="
curl -s -N "${BASE}/chat/completions" \
  -H "Authorization: Bearer ${KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "deepseek-v4-flash",
    "stream": true,
    "messages": [{"role": "user", "content": "数到 5"}]
  }' | head -n 10
echo

echo "完成。若第 1 步返回模型列表且第 2 步有正常回复，说明接口连通正常。"
echo "更多模型 id 见 https://caapi.top/models"
