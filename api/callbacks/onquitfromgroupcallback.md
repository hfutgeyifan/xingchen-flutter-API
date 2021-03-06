---
description: 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持）
---

# OnQuitFromGroupCallback

## 功能介绍

主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持）

## 回调函数模版

```dart
OnQuitFromGroupCallback = void Function(
String groupID
)
```

## 参数详解

| 参数名称    | 参数类型   | 参数描述 |
| ------- | ------ | ---- |
| groupID | String | 群 ID |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onQuitFromGroup: (String groupID) async {
        //主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持）
        //groupID	群 ID
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

