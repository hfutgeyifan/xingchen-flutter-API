---
description: 删除本地及漫游消息
---

# deleteMessages

## 功能介绍

删除本地及漫游消息

{% hint style="info" %}
1. 该接口会在删除本地消息的基础上，同步删除云端存储的消息，且无法恢复。
2. 每次调用，最多只能删除 30 条消息。
3. 每次调用，待删除的消息**必须**属于同一会话。
4. 1 秒钟最多只能调用 1 次该接口。
5. 如果一个账号在某设备上拉取过这些消息，那么调用该接口删除云端消息后，这些消息仍然会保存在该设备上，即删除消息不支持多端同步。
{% endhint %}

## 参数详解

| 参数名称                   | 参数类型            | 是否必填 | 描述              |
| ---------------------- | --------------- | ---- | --------------- |
| msgIDs                 | List< String >  | 是    | 需要删除的消息id列表     |
| webMessageInstanceList | List< dynamic > | 否    | 需要删除的web端消息实例列表 |

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
// 删除本地及漫游消息
TencentImSDKPlugin
    .v2TIMManager
    .getMessageManager()
    .deleteMessages(
    msgIDs: ['messageid']，// 需要删除的消息id
    webMessageInstanceList:[]// 需要删除的web端消息实例列表
    );
```
