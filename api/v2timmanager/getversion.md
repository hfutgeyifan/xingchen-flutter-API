---
description: 获取版本号√
---

# getVersion

## 功能介绍

获取版本号

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<String>

{
    code : int
    desc : String
    data : String//版本号
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | String | 版本号                                                            |

## 代码示例  &#x20;

```dart
    //获取版本号
    V2TimValueCallback<String> getVersionRes =
        await TencentImSDKPlugin.v2TIMManager.getVersion();
    if (getVersionRes.code == 0) {
      //获取成功
      getVersionRes.data; //版本号
    }
```
