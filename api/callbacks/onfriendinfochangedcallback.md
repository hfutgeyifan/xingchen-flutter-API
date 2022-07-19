---
description: 好友信息改变的回调
---

# OnFriendInfoChangedCallback

## 回调函数功能描述

好友信息改变的回调

## 回调函数模版

```dart
OnFriendInfoChangedCallback = void Function(
List<V2TimFriendInfo> infoList
)
```

## 回调函数参数说明

| 参数名称     | 参数类型                                        | 参数描述        |
| -------- | ------------------------------------------- | ----------- |
| infoList | List< [V2TimFriendInfo](broken-reference) > | 好友信息改变的好友列表 |

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
     onFriendInfoChanged: (List<V2TimFriendInfo> infoList) async {
        //好友信息改变的回调
        //infoList 好友信息改变的好友列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```

