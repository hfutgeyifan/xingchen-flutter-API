---
description: 删除指定群属性
---

# deleteGroupAttributes

## API功能介绍

删除指定群属性

* 如果 `keys` 字段填 `null` ，则会清空所有的群属性。

{% hint style="info" %}
注意：&#x20;

1、目前只支持 AVChatRoom&#x20;

2、initGroupAttributes、setGroupAttributes、deleteGroupAttributes 接口合并计算， SDK 限制为5秒10次，超过后回调8511错误码；后台限制1秒5次，超过后返回10049错误码
{% endhint %}

## 参数详解

| 参数名称    | 参数类型           | 是否必填 | 描述          |
| ------- | -------------- | ---- | ----------- |
| groupID | String         | 是    | 需要删除属性的群组id |
| keys    | List< String > | 是    | 删除的属性key值   |

## 返回模板

```dart
V2TimCallback

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
    // 删除指定群属性
    V2TimCallback deleteGroupAttributesRes = await TencentImSDKPlugin
        .v2TIMManager
        .getGroupManager()
        .deleteGroupAttributes(
          groupID: "groupID", 
          keys: ["custom"]
        );
    if (deleteGroupAttributesRes.code == 0) {
      // 删除成功
    }

```