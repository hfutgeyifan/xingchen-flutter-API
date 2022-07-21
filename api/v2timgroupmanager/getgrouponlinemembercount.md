---
description: 获取指定群在线人数√
---

# getGroupOnlineMemberCount

## 功能介绍

获取指定群在线人数

{% hint style="info" %}
1. 目前仅直播群（AVChatRoom）支持获取群在线人数。
2. SDK 调用频率限制为 60 秒 1 次。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述        |
| ------- | ------ | ---- | --------- |
| groupID | String | 是    | 需要查询的群组id |

## 返回值

```dart
V2TimValueCallback<int>

{
    code : int
    desc : String
    data : int
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | int    | 查询到的群在线人数                                                      |

## 代码示例  &#x20;

```dart
    // 获取指定群在线人数
    V2TimValueCallback<int> getGroupOnlineMemberCountRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupOnlineMemberCount(
              groupID: "groupID",
            );
    if (getGroupOnlineMemberCountRes.code == 0) {
      // 查询成功
      int? groupOnlineMemberCount = getGroupOnlineMemberCountRes.data;// 查询到的群在线人数
    }
```
