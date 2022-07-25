---
description: 好友请求数量增加的回调
---

# OnFriendApplicationListAddedCallback

## 功能介绍

好友请求数量增加的回调

## 回调函数模版

```dart
OnFriendApplicationListAddedCallback = void Function(
List<V2TimFriendApplication> applicationList
)
```

## 参数详解

| 参数名称            | 参数类型                                                                              | 参数描述        |
| --------------- | --------------------------------------------------------------------------------- | ----------- |
| applicationList | List< [V2TimFriendApplication](../guan-jian-lei/user/v2timfriendapplication.md) > | 新增的好友请求信息列表 |

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onFriendApplicationListAdded:
          (List<V2TimFriendApplication> applicationList) async {
        //好友请求数量增加的回调
        //applicationList 新增的好友请求信息列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```
