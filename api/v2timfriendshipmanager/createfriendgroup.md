---
description: 新建好友分组√
---

# createFriendGroup

## 功能介绍

新建好友分组

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述                   |
| ---------- | -------------- | ---- | -------------------- |
| groupName  | String         | 是    | 新建的分组名称              |
| userIDList | List< String > | 否    | 要添加到分组中的好友 userID 列表 |

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

| 名称   | 数值类型                                                                                        | 描述                                                             |
| ---- | ------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                         | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                      | 请求结果描述                                                         |
| data | List<  [V2TimFriendOperationResult](../guan-jian-lei/user/v2timfriendoperationresult.md)  > | 新建结果列表                                                         |

## 代码示例

```dart
    // 新建好友分组
    V2TimValueCallback<List<V2TimFriendOperationResult>> createFriendGroupRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .createFriendGroup(
      userIDList: [],//要添加到分组中的好友 userID 列表
      groupName: "",//新建的分组名称
    );
    if (createFriendGroupRes.code == 0) {
      // 新建请求发送成功
      createFriendGroupRes.data?.forEach((element) {
        element.resultCode;//此条操作的错误码
        element.resultInfo;//此条操作的结果描述
        element.userID;//此条被操作的用户id
      });
    }
```
