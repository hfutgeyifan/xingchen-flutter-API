---
description: 把用户从黑名单中删除√
---

# deleteFromBlackList

## 功能介绍

把用户从黑名单中删除

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述             |
| ---------- | -------------- | ---- | -------------- |
| userIDList | List< String > | 是    | 需要移出黑名单的好友id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendOperationResult>//把用户从黑名单中删除请求的结果信息
}
```

## 返回值详解

| 名称   | 数值类型                                                                                      | 描述                                                             |
| ---- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                       | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                    | 请求结果描述                                                         |
| data | List< [V2TimFriendOperationResult](../guan-jian-lei/user/v2timfriendoperationresult.md) > | 把用户从黑名单中删除请求的结果信息                                              |

## 代码示例

```dart
    //把用户从黑名单中删除
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        deleteFromBlackListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .deleteFromBlackList(
              userIDList: [] //需要移出黑名单的好友id列表
              );
    if (deleteFromBlackListRes.code == 0) {
      // 删除成功
      deleteFromBlackListRes.data?.forEach((element) {
        element.resultCode;//此条记录的错误码
        element.resultInfo;//此条记录的操作结果描述
        element.userID;//被操作的用户id
      });
    }
```
