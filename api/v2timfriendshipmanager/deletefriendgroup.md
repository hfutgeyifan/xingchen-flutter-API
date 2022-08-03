---
description: 删除好友分组√
---

# deleteFriendGroup

## 功能介绍

删除好友分组

## 参数详解

| 参数名称          | 参数类型           | 是否必填 | 描述        |
| ------------- | -------------- | ---- | --------- |
| groupNameList | List< String > | 是    | 需要删除的群组名称 |

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
    // 删除好友分组
    V2TimCallback deleteFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .deleteFriendGroup(groupNameList: []);//需要删除的群组名称
    if (deleteFriendGroupRes.code == 0) {
      // 删除成功
    }
```
