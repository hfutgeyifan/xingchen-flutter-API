---
description: 同意好友申请
---

# acceptFriendApplication

## 功能介绍

同意好友申请

## 参数详解

| 参数名称         | 参数类型                                                               | 是否必填 | 描述                 |
| ------------ | ------------------------------------------------------------------ | ---- | ------------------ |
| responseType | [FriendResponseTypeEnum](../enums/friendresponsetypeenum.md)       | 是    | 建立好友关系时选择单向/双向好友关系 |
| type         | [FriendApplicationTypeEnum](../enums/friendapplicationtypeenum.md) | 是    | 加好友类型              |
| userID       | String                                                             | 是    | 同意好友的用户id          |

## 返回值

```dart
V2TimValueCallback<V2TimFriendOperationResult>

{
    code : int
    desc : String
    data : {
        resultCode : int//操作结果错误码
        resultInfo : String//操作结果描述
        userID : String//同意好友的id
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                                              | 描述                                                             |
| ---- | --------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                               | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                            | 请求结果描述                                                         |
| data | [V2TimFriendOperationResult](../guan-jian-lei/user/v2timfriendoperationresult.md) | 同意好友申请请求的返回信息                                                  |

## 代码示例

```dart
    //同意好友申请
    V2TimValueCallback<V2TimFriendOperationResult> acceptFriendApplicationRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .acceptFriendApplication(
                responseType: FriendResponseTypeEnum.V2TIM_FRIEND_ACCEPT_AGREE,//建立好友关系时选择单向/双向好友关系
                type: FriendApplicationTypeEnum.V2TIM_FRIEND_APPLICATION_BOTH,//加好友类型
                userID: "");//同意好友的用户id
    if (acceptFriendApplicationRes.code == 0) {
      // 同意成功
      acceptFriendApplicationRes.data?.resultCode;//操作结果错误码
      acceptFriendApplicationRes.data?.resultInfo;//操作结果描述
      acceptFriendApplicationRes.data?.userID;//同意好友的id
    }
```
