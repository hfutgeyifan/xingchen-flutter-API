---
description: 拒绝好友申请
---

# refuseFriendApplication

## API功能介绍

拒绝好友申请

## 参数详解

| 参数名称   | 参数类型                                          | 是否必填 | 描述        |
| ------ | --------------------------------------------- | ---- | --------- |
| type   | [FriendApplicationTypeEnum](broken-reference) | 是    | 拒绝好友类型    |
| userID | String                                        | 是    | 拒绝好友的用户id |

## 返回模板

```dart
V2TimValueCallback<V2TimFriendOperationResult>

{
    code : int
    desc : String
    data : {
        resultCode : int//操作结果错误码
        resultInfo : String//操作结果描述
        userID : String//拒绝好友的id
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                           | 描述                                                             |
| ---- | ---------------------------------------------- | -------------------------------------------------------------- |
| code | int                                            | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                         | 请求结果描述                                                         |
| data | [V2TimFriendOperationResult](broken-reference) | 拒绝好友申请请求的返回信息                                                  |

## 使用案例  &#x20;

```dart
    V2TimValueCallback<V2TimFriendOperationResult> refuseFriendApplicationRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .refuseFriendApplication(
                type: FriendApplicationTypeEnum.V2TIM_FRIEND_APPLICATION_BOTH,//拒绝好友类型
                userID: "");//拒绝好友的用户id
    if (refuseFriendApplicationRes.code == 0) {
      // 拒绝成功
      refuseFriendApplicationRes.data?.resultCode;//操作结果错误码
      refuseFriendApplicationRes.data?.resultInfo;//操作结果描述
      refuseFriendApplicationRes.data?.userID;//拒绝好友的id
    }
```
