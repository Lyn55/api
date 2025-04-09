#!/bin/bash

# 获取当前时间
current_datetime=$(date +"%m-%d %H:%M:%S")
echo "Current Date and Time: $current_datetime"

# 发送通知的 curl 请求
curl --request POST \
  --url "$ONESIGNAL_URL" \
  --header "Authorization: Basic $ONESIGNAL_API_KEY" \
  --header 'Content-Type: application/json' \
  --data "{
    \"app_id\": \"$ONESIGNAL_APP_ID\",
    \"included_segments\": [\"All\"],
    \"content_available\": true,
    \"data\": {
      \"OneSignal data\": \"github_refresh [$current_datetime]\"
    }
  }"
