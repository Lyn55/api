#!/bin/bash

# 获取当前时间
current_datetime=$(date +"%m-%d %H:%M:%S")
echo "Current Date and Time: $current_datetime"

# 发送通知的 curl 请求
curl --request POST \
  --url "$ONE_URL" \
  --header "Authorization: Basic $API_KEY" \
  --header 'Content-Type: application/json' \
  --data "{
    \"app_id\": \"$APP_ID\",
    \"included_segments\": [\"All\"],
    \"content_available\": true,
    \"data\": {
      \"OneSignal data\": \"github_refresh [$current_datetime]\"
    }
  }"
