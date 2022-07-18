---
description: 设置群属性
---

# setGroupAttributes

## API功能介绍

设置群属性

* 如果设置的群属性不存在，会自动添加该群属性。

{% hint style="info" %}
注意：&#x20;

1、目前只支持 AVChatRoom&#x20;

2、key 最多支持16个，长度限制为32字节&#x20;

3、value 长度限制为4k&#x20;

4、总的 attributes（包括 key 和 value）限制为16k&#x20;

5、initGroupAttributes、setGroupAttributes、deleteGroupAttributes 接口合并计算， SDK 限制为5秒10次，超过后回调8511错误码；后台限制1秒5次，超过后返回10049错误码
{% endhint %}

## 参数详解

| 参数名称       | 参数类型                 | 是否必填 | 描述          |
| ---------- | -------------------- | ---- | ----------- |
| groupID    | String               | 是    | 需要设置属性的群组id |
| attributes | Map< String,String > | 是    | 设置的属性       |

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
    // 设置群属性
    V2TimCallback setGroupAttributesRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .setGroupAttributes(
          groupID: "groupID",// 需要设置属性的群组id
          attributes: {"custom":"custom"}// 设置的属性
          );
    if (setGroupAttributesRes.code == 0) {
      // 设置成功
    }

```
