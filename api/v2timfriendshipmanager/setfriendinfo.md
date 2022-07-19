---
description: 设置指定好友资料
---

# setFriendInfo

## 功能介绍

设置指定好友资料

## 参数详解

| 参数名称             | 参数类型                      | 是否必填 | 描述         |
| ---------------- | ------------------------- | ---- | ---------- |
| userID           | String                    | 是    | 需要修改的用户id  |
| friendRemark     | String                    | 否    | 修改的好友备注    |
| friendCustomInfo | StriMap< String, String > | 否    | 修改的好友自定义信息 |

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

## 代码示例  &#x20;

```dart
    //设置指定好友资料
    V2TimCallback setFriendInfoRes = await TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .setFriendInfo(
            userID: "userID",//需要修改的用户id
            friendRemark: "",//修改的好友备注
            friendCustomInfo: {"custom": "custom"});//修改的好友自定义信息
    if (setFriendInfoRes.code == 0) {
      // 修改成功
    }

```
