---
description: 收到消息撤回的通知
---

# OnRecvMessageRevokedCallback

## 回调函数功能描述

收到消息撤回的通知

## 回调函数模版

```dart
OnRecvMessageRevokedCallback = void Function(
String messageid
)
```

## 回调函数参数说明

| 参数名称      | 参数类型   | 参数描述    |
| --------- | ------ | ------- |
| messageid | String | 撤回消息的id |

## 代码示例

```dart
    //设置会话监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onRecvMessageRevoked: (String messageid) {
        // 收到消息撤回的通知
        // messageid 撤回消息的id
      },
    );
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

