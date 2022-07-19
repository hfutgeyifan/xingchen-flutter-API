---
description: 获取指定群属性
---

# getGroupAttributes

## 功能介绍

获取指定群属性

* 如果 `keys` 字段填 `null` ，则会获取所有的群属性。

{% hint style="info" %}
注意：&#x20;

1、目前只支持 AVChatRoom&#x20;

2、initGroupAttributes、setGroupAttributes、deleteGroupAttributes 接口合并计算， SDK 限制为5秒10次，超过后回调8511错误码；后台限制1秒5次，超过后返回10049错误码
{% endhint %}

## 参数详解

| 参数名称    | 参数类型           | 是否必填 | 描述          |
| ------- | -------------- | ---- | ----------- |
| groupID | String         | 是    | 需要获取属性的群组id |
| keys    | List< String > | 是    | 获取的属性key值列表 |

## 返回值

```dart
V2TimValueCallback<Map<String, String>>

{
    code : int
    desc : String
    data : Map<String, String>// 获取到的群属性
}
```

## 返回值详解

| 名称   | 数值类型                 | 描述                                                             |
| ---- | -------------------- | -------------------------------------------------------------- |
| code | int                  | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String               | 请求结果描述                                                         |
| data | Map< String,String > | 获取到的群属性                                                        |

## 代码示例  &#x20;

```dart
    // 获取指定群属性
    V2TimValueCallback<Map<String, String>> getGroupAttributesRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupAttributes(
              groupID: "groupID",// 需要获取属性的群组id
              keys: ["custom"]// 获取的属性key值列表
               );
    if (getGroupAttributesRes.code == 0) {
      // 获取成功
      Map<String, String>? groupAttributes = getGroupAttributesRes.data;// 获取到的群属性
    }

```
