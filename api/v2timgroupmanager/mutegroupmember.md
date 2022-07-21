---
description: 禁言√
---

# muteGroupMember

## 功能介绍

禁言

* 禁言时间单位为秒，禁言信息存储于群成员的 `muteUtil` 属性字段中。
* 群成员被禁言后，全员（包括被禁言的群成员）都会收到 [`onMemberInfoChanged`](../callbacks/onmemberinfochangedcallback.md) 事件回调。
* 只有管理员或群主能够调用
* 只有群主能将管理员禁言。

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述       |
| ------- | ------ | ---- | -------- |
| groupID | String | 是    | 禁言的群组id  |
| userID  | String | 是    | 禁言的用户id  |
| seconds | int    | 是    | 禁言时间，单位秒 |

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
     // 禁言群组内的用户
     V2TimCallback muteGroupMemberRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .muteGroupMember(
          groupID: "groupID",// 禁言的群组id
          userID: "userID",// 禁言的用户id
          seconds: 0// 禁言时间
          );
     if (muteGroupMemberRes.code == 0) {
      // 禁言成功
     }
```
