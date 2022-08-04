---
description: 添加好友到一个好友分组√
---

# addFriendsToFriendGroup

## 功能介绍

添加好友到一个好友分组

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述            |
| ---------- | -------------- | ---- | ------------- |
| groupName  | String         | 是    | 分组名称          |
| userIDList | List< String > | 是    | 需要加入分组的好友id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendOperationResult>//添加分组请求的结果信息
}
```

## 返回值详解

| 名称   | 数值类型                                                                                        | 描述                                                             |
| ---- | ------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                         | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                      | 请求结果描述                                                         |
| data | List<  [V2TimFriendOperationResult](../keyClass/user/v2timfriendoperationresult.md)  > | 添加分组请求的结果信息                                                    |

## 代码示例

```dart
    //添加好友到一个好友分组
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        addFriendsToFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .addFriendsToFriendGroup(
              groupName: "", //分组名称
              userIDList: [] //需要加入分组的好友id
              );
    if (addFriendsToFriendGroupRes.code == 0) {
      // 添加成功
      addFriendsToFriendGroupRes.data?.forEach((element) {
        element.resultCode;//此条记录的错误码
        element.resultInfo;//此条记录的操作结果描述
        element.userID;//此条记录被操作的用户id
      });
    }
```
