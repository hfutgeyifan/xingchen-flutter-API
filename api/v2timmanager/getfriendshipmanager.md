---
description: 关系链功能入口
---

# getFriendshipManager

## API功能介绍

关系链功能入口

* 关系链功能方法在核心类 `TencentImSDKPlugin.v2TIMManager.`getFriendshipManager`()`中。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TIMFriendshipManager
```

## 返回参数详解

| 名称                     | 数值类型                                       | 描述      |
| ---------------------- | ------------------------------------------ | ------- |
| V2TIMFriendshipManager | [V2TIMFriendshipManager](broken-reference) | 关系链功能入口 |

## 使用案例  &#x20;

```dart
    // 使用getFriendshipManager添加好友的案例
    //添加好友
    V2TimValueCallback<V2TimFriendOperationResult> addFriendRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .addFriend(
              userID: "userID",//需要添加的用户id
              remark: "",//添加的好友的好友备注
              friendGroup: "",//添加好友所在分组
              addWording: "",//添加好友附带信息
              addSource: "",//添加来源描述
              addType: FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH,//设置加好友类型，默认双向
            );
    if (addFriendRes.code == 0) {
      // 添加请求发送成功
    }
```
