---
description: 黑名单列表删除用户的回调
---

# OnBlackListDeletedCallback

## 回调函数功能描述

黑名单列表删除用户的回调

## 回调函数模版

```dart
OnBlackListDeletedCallback = void Function(
List<String> userList
)
```

## 回调函数参数说明

| 参数名称     | 参数类型           | 参数描述       |
| -------- | -------------- | ---------- |
| userList | List< String > | 被删除的用户id列表 |

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onBlackListDeleted: (List<String> userList) async {
        //黑名单列表删除的回调
        //userList 被删除的用户id列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```

