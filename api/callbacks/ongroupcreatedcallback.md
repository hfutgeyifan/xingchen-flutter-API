---
description: 创建群（主要用于多端同步）
---

# OnGroupCreatedCallback

## 功能介绍

创建群（主要用于多端同步）

## 回调函数模版

```dart
OnGroupCreatedCallback = void Function(
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
      onGroupCreated: (String groupID) async {
        //创建群（主要用于多端同步）
        //groupID	群 ID
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

