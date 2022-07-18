---
description: 文件上传进度回调
---

# OnSendMessageProgressCallback

## 回调函数功能描述

文件上传进度回调

## 回调函数模版

```dart
OnSendMessageProgressCallback = void Function(
V2TimMessage message,
int progress
)
```

## 回调函数参数说明

| 参数名称     | 参数类型                             | 参数描述         |
| -------- | -------------------------------- | ------------ |
| message  | [V2TimMessage](broken-reference) | 上传文件的消息属性    |
| progress | int                              | 文件上传进度 0-100 |

## 使用案例

```dart
    //设置会话监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onSendMessageProgress: (V2TimMessage message, int progress) {
        //文件上传进度回调
        //message 上传文件的消息属性
        //progress文件上传进度 0-100
      }
    );
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

