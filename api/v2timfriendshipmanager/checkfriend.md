---
description: 检查指定用户的好友关系√
---

# checkFriend

## 功能介绍

检查指定用户的好友关系

## 参数详解

| 参数名称       | 参数类型                                         | 是否必填 | 描述          |
| ---------- | -------------------------------------------- | ---- | ----------- |
| userIDList | List< String >                               | 是    | 需要检查的用户id列表 |
| checkType  | [FriendTypeEnum](../enums/friendtypeenum.md) | 是    | 检查的类型       |

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendCheckResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendCheckResult>
}
```

## 返回值详解

| 名称   | 数值类型                                                                               | 描述                                                             |
| ---- | ---------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                             | 请求结果描述                                                         |
| data | List<  [V2TimFriendCheckResult](../guan-jian-lei/user/v2timfriendcheckresult.md) > | 检查请求结果列表                                                       |

## 代码示例

```dart
    //检查指定用户的好友关系
    V2TimValueCallback<List<V2TimFriendCheckResult>> checkFriendRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .checkFriend(
      userIDList: [],//需要检查的用户id列表
      checkType: FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH,//检查的类型
    );
    if (checkFriendRes.code == 0) {
      // 查询发送成功
      checkFriendRes.data?.forEach((element) {
        element.resultCode;//检查结果错误码
        element.resultInfo;//检查结果信息
        element.resultType;//与查询用户的关系类型 0:不是好友 1:对方在我的好友列表中 2:我在对方的好友列表中 3:互为好友
        element.userID;//用户id
      });
    }
```
