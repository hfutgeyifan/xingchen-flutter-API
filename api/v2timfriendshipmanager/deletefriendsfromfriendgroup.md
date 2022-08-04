---
description: 从好友分组中删除好友√
---

# deleteFriendsFromFriendGroup

## 功能介绍

从好友分组中删除好友

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述          |
| ---------- | -------------- | ---- | ----------- |
| groupName  | String         | 是    | 需要删除的群组名称   |
| userIDList | List< String > | 是    | 需要删除的用户id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendOperationResult>//操作结果说明列表
}
```

## 返回值详解

| 名称   | 数值类型                                                                                      | 描述                                                             |
| ---- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                       | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                    | 请求结果描述                                                         |
| data | List< [V2TimFriendOperationResult](../keyClass/user/v2timfriendoperationresult.md) > | 操作结果说明列表                                                       |

## 代码示例

```dart
    // 从好友分组中删除好友（只是将好友移出此列表，不删除好友关系）
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        deleteFriendsFromFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .deleteFriendsFromFriendGroup(groupName: "", //需要删除的群组名称
                userIDList: [] //需要删除的用户id列表
                );
    if (deleteFriendsFromFriendGroupRes.code == 0) {
      // 添加成功
      deleteFriendsFromFriendGroupRes.data?.forEach((element) {
        element.resultCode; //此条记录的错误码
        element.resultInfo; //此条记录操作结果说明
        element.userID; //此条记录被操作的用户id
      });
    }
```
