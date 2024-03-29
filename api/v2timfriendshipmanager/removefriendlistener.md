---
description: 移除关系链监听器√
---

# removeFriendListener

## 功能介绍

移除关系链监听器

{% hint style="info" %}
注意：

若listener为null则删除所有的关系链监听器
{% endhint %}

## 参数详解

| 参数名称     | 参数类型                                                                            | 是否必填 | 描述          |
| -------- | ------------------------------------------------------------------------------- | ---- | ----------- |
| listener | [V2TimFriendshipListener](../keyClass/listener/v2timfriendshiplistener.md) | 是    | 需要移除的关系链监听器 |

## 返回值

```dart
void
```

## 返回值详解

{% hint style="info" %}
此方法无返回值
{% endhint %}

## 代码示例

```dart
    //设置关系链监听器
    V2TimFriendshipListener listener = V2TimFriendshipListener(
      onBlackListAdd: (List<V2TimFriendInfo> infoList) async {
        //黑名单列表新增用户的回调
        //infoList 新增的用户信息列表
      },
      onBlackListDeleted: (List<String> userList) async {
        //黑名单列表删除的回调
        //userList 被删除的用户id列表
      },
      onFriendApplicationListAdded:
          (List<V2TimFriendApplication> applicationList) async {
        //好友请求数量增加的回调
        //applicationList 新增的好友请求信息列表
      },
      onFriendApplicationListDeleted: (List<String> userIDList) async {
        //好友请求数量减少的回调
        //减少的好友请求的请求用户id列表
      },
      onFriendApplicationListRead: () async {
        //好友请求已读的回调
      },
      onFriendInfoChanged: (List<V2TimFriendInfo> infoList) async {
        //好友信息改变的回调
        //infoList 好友信息改变的好友列表
      },
      onFriendListAdded: (List<V2TimFriendInfo> users) async {
        //好友列表增加人员的回调
        //users 新增的好友信息列表
      },
      onFriendListDeleted: (List<String> userList) async {
        //好友列表减少人员的回调
        //userList 减少的好友id列表
      },
    );
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .addFriendListener(listener: listener);//添加关系链监听器
        
    //添加成功之后可移除
    TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .removeFriendListener(listener: listener);//需要移除的关系链监听器
```
