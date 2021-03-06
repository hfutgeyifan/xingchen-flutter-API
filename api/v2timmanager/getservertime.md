---
description: 获取服务器当前时间√
---

# getServerTime

## 功能介绍

获取服务器当前时间

{% hint style="info" %}
注意：

&#x20;web不支持该接口
{% endhint %}

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<int>

{
    code : int
    desc : String
    data : int//服务器当前时间
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | int    | 服务器当前时间                                                        |

## 代码示例  &#x20;

```dart
    //获取服务器当前时间
    V2TimValueCallback<int> getServerTimeRes =
        await TencentImSDKPlugin.v2TIMManager.getServerTime();
    if (getServerTimeRes.code == 0) {
      //获取成功
      getServerTimeRes.data;//服务器当前时间
    }
```
