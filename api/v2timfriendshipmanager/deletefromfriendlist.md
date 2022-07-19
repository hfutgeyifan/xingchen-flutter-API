---
description: 从好友列表删除好友
---

# deleteFromFriendList

## 功能介绍

添加好友

* ID 建议一次最大 100 个，因为数量过多可能会导致数据包太大被后台拒绝，后台限制数据包最大为 1M。

## 参数详解

| 参数名称       | 参数类型                                         | 是否必填 | 描述          |
| ---------- | -------------------------------------------- | ---- | ----------- |
| userIDList | List< String >                               | 是    | 需要删除的用户id列表 |
| deleteType | [FriendTypeEnum](../enums/friendtypeenum.md) | 是    | 删除操作的类型     |

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendOperationResult>
}
```

## 返回值详解

| 名称   | 数值类型                                                                                      | 描述                                                             |
| ---- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                       | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                    | 请求结果描述                                                         |
| data | List< [V2TimFriendOperationResult](../guan-jian-lei/user/v2timfriendoperationresult.md) > | 删除请求结果列表                                                       |

## 代码示例

```dart
    //从好友列表删除好友
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        deleteFromFriendListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .deleteFromFriendList(
      userIDList: [],//需要删除的用户id列表
      deleteType: FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH,//删除操作的类型
    );
    if (deleteFromFriendListRes.code == 0) {
      // 删除请求发送成功
      deleteFromFriendListRes.data?.forEach((element) {
        element.resultCode;//此条删除操作的错误码
        element.resultInfo;//此条删除操作的结果描述
        element.userID;//此条删除操作的用户id
      });
    }
```
