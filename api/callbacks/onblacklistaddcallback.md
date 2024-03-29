---
description: 黑名单列表新增用户的回调
---

# OnBlackListAddCallback

## 功能介绍

黑名单列表新增用户的回调

## 回调函数模版

```dart
OnBlackListAddCallback = void Function(
List<V2TimFriendInfo> infoList
)
```

## 参数详解

| 参数名称     | 参数类型                                                                | 参数描述      |
| -------- | ------------------------------------------------------------------- | --------- |
| infoList | List< [V2TimFriendInfo](../keyClass/user/v2timfriendinfo.md) > | 新增的用户信息列表 |

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onBlackListAdd: (List<V2TimFriendInfo> infoList) async {
        //黑名单列表新增用户的回调
        //infoList 新增的用户信息列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```
