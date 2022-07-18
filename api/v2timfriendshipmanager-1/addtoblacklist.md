---
description: 添加用户到黑名单
---

# addToBlackList

## API功能介绍

添加用户到黑名单

* 被拉黑的用户默认不会感知到 “被拉黑” 的状态，消息发送后不会返回已被对方拉黑的错误码。
* 如果希望被拉黑的用户在发消息时返回已被对方拉黑的错误提醒，请在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) >【功能配置】>【登录与消息】>【黑名单检查】中关闭 ”发送消息后展示发送成功“。关闭后，被拉黑的用户在发送消息时，SDK 会报 20007 错误码。

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述             |
| ---------- | -------------- | ---- | -------------- |
| userIDList | List< String > | 是    | 需要加入黑名单的好友id列表 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimFriendOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendOperationResult>//添加黑名单请求的结果信息
}
```

## 返回参数详解

| 名称   | 数值类型                                                                                      | 描述                                                             |
| ---- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                       | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                    | 请求结果描述                                                         |
| data | List< [V2TimFriendOperationResult](../guan-jian-lei/user/v2timfriendoperationresult.md) > | 添加黑名单请求的结果信息                                                   |

## 使用案例  &#x20;

```dart
    //添加好友到黑名单
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        addToBlackListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .addToBlackList(
              userIDList: [] //需要加入黑名单的好友id列表
              );
    if (addToBlackListRes.code == 0) {
      // 添加成功
      addToBlackListRes.data?.forEach((element) {
        element.resultCode;//此条记录的错误码
        element.resultInfo;//此条记录的操作结果描述
        element.userID;//被操作的用户id
      });
    }
```
