---
description: 好友请求已读的回调
---

# OnFriendApplicationListReadCallback

## 功能介绍

好友请求已读的回调

## 回调函数模版

```dart
OnFriendApplicationListReadCallback = void Function()
```

## 参数详解

{% hint style="info" %}
该回调函数无参数
{% endhint %}

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onFriendApplicationListRead: () async {
        //好友请求已读的回调
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener); //添加关系链监听器
```

