---
description: 删除好友申请√
---

# deleteFriendApplication

## 功能介绍

删除好友申请

## 参数详解

| 参数名称   | 参数类型                                                               | 是否必填 | 描述           |
| ------ | ------------------------------------------------------------------ | ---- | ------------ |
| type   | [FriendApplicationTypeEnum](../enums/friendapplicationtypeenum.md) | 是    | 加好友类型        |
| userID | String                                                             | 是    | 被删除好友申请的用户id |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例

```dart
    //删除好友申请
    V2TimCallback deleteFriendApplicationRes = await TencentImSDKPlugin
        .v2TIMManager
        .getFriendshipManager()
        .deleteFriendApplication(
          type: FriendApplicationTypeEnum.V2TIM_FRIEND_APPLICATION_BOTH,//加好友类型 要与getApplicationList查询到的type相同，否则会报错。
          userID: "",//被删除好友申请的用户id
        );
    if (deleteFriendApplicationRes.code == 0) {
      // 删除成功
    }
```
