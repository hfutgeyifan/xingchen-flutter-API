---
description: 好友列表增加人员的回调
---

# OnFriendListAddedCallback

## 回调函数功能描述

好友列表增加人员的回调

## 回调函数模版

```dart
OnFriendListAddedCallback = void Function(
List<V2TimFriendInfo> users
)
```

## 回调函数参数说明

| 参数名称  | 参数类型                                                                       | 参数描述      |
| ----- | -------------------------------------------------------------------------- | --------- |
| users | List< [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) > | 新增的好友信息列表 |

## 使用案例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onFriendListAdded: (List<V2TimFriendInfo> users) async {
        //好友列表增加人员的回调
        //users 新增的好友信息列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```

