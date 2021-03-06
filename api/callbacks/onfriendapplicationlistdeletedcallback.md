---
description: 好友请求数量减少的回调
---

# OnFriendApplicationListDeletedCallback

## 功能介绍

好友请求数量减少的回调

## 回调函数模版

```dart
OnFriendApplicationListDeletedCallback = void Function(
List<String> userIDList
)
```

## 参数详解

| 参数名称       | 参数类型           | 参数描述             |
| ---------- | -------------- | ---------------- |
| userIDList | List< String > | 减少的好友请求的请求用户id列表 |

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onFriendApplicationListDeleted: (List<String> userIDList) async {
        //好友请求数量减少的回调
        //减少的好友请求的请求用户id列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```

