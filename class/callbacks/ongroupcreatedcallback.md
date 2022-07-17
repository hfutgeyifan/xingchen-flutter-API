---
description: 创建群（主要用于多端同步）
---

# OnGroupCreatedCallback

## 回调函数功能描述

创建群（主要用于多端同步）

## 回调函数模版

```dart
OnGroupCreatedCallback = void Function(
String groupID
)
```

## 回调函数参数说明

| 参数名称    | 参数类型   | 参数描述 |
| ------- | ------ | ---- |
| groupID | String | 群 ID |

## 使用案例

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

