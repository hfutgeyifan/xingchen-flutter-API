---
description: 好友列表减少人员的回调
---

# OnFriendListDeletedCallback

## 回调函数功能描述

好友列表减少人员的回调

## 回调函数模版

```dart
OnFriendListDeletedCallback = void Function(
List<String> userList
)
```

## 回调函数参数说明

| 参数名称     | 参数类型           | 参数描述      |
| -------- | -------------- | --------- |
| userList | List< String > | 减少的好友id列表 |

## 使用案例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onFriendListDeleted: (List<String> userList) async {
        //好友列表减少人员的回调
        //userList 减少的好友id列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```

