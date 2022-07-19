---
description: 初始化群属性
---

# initGroupAttributes

## 功能介绍

初始化群属性

* 初始化群属性，会清空原有的群属性列表

{% hint style="info" %}
注意：&#x20;

1、目前只支持 AVChatRoom&#x20;

2、key 最多支持16个，长度限制为32字节&#x20;

3、value 长度限制为4k&#x20;

4、总的 attributes（包括 key 和 value）限制为16k&#x20;

5、initGroupAttributes、setGroupAttributes、deleteGroupAttributes 接口合并计算， SDK 限制为5秒10次，超过后回调8511错误码；后台限制1秒5次，超过后返回10049错误码

6、getGroupAttributes 接口 SDK 限制5秒20次
{% endhint %}

## 参数详解

| 参数名称       | 参数类型                 | 是否必填 | 描述           |
| ---------- | -------------------- | ---- | ------------ |
| groupID    | String               | 是    | 需要初始化属性的群组id |
| attributes | Map< String,String > | 是    | 初始化属性        |

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
    // 初始化群属性
    V2TimCallback initGroupAttributesRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .initGroupAttributes(
          groupID: "groupID",// 需要初始化属性的群组id
          attributes: {"custom":"custom"}// 初始化属性
          );
    if (initGroupAttributesRes.code == 0) {
      // 初始化成功
    }

```
