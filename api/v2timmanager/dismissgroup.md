---
description: 解散群组
---

# dismissGroup

## API功能介绍

解散群组

* 您可以调用 `dismissGroup` 解散群组，全员会收到 `onGroupDismissed`回调。
* 如果您在服务器端设置了允许自动解散不活跃的群，当群被服务器端自动解散后，SDK 会收到 `onGroupRecycled`回调。

{% hint style="info" %}
注意：

Work：任何人都无法解散群组。&#x20;

其他群：群主可以解散群组。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述        |
| ------- | ------ | ---- | --------- |
| groupID | String | 是    | 需要加入群组 ID |

## 返回模板

```dart
V2TimValueCallback

{
    code : int
    desc : String
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 使用案例  &#x20;

```dart
// 事件监听
    TencentImSDKPlugin.v2TIMManager.addGroupListener(
        listener: V2TimGroupListener(onGroupDismissed: (groupID, opUser) {
      // 群被解散
    }, onGroupRecycled: (groupID, opUser) {
      // 群被回收
    }));
// 解散群组
    TencentImSDKPlugin.v2TIMManager.dismissGroup(groupID: "groupID");// 需要解散的群组id

```
