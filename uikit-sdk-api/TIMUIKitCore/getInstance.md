---
description: TIMUIKit 核心类，包含初始化、登录、登出、获取用户信息等方法的入口
---

# getInstance

## 功能介绍

TIMUIKit 核心类，包含初始化、登录、登出、获取用户信息等方法的入口

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
CoreServicesImpl

```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| CoreServicesImpl | CoreServicesImpl    | TIMUIKit 核心类，包含初始化、登录、登出、获取用户信息等方法的入口 |

## 代码示例  &#x20;

```dart
    //使用getInstance初始化SDK
    final CoreServicesImpl _coreInstance = TIMUIKitCore.getInstance();

    /// 初始化SDK
    _coreInstance.init(
        sdkAppID: 0, // 控制台申请的sdkAppID
        loglevel: LogLevelEnum.V2TIM_LOG_DEBUG,//打印日志等级
        listener: V2TimSDKListener(),//SDK监听器
        language: LanguageEnum.zhHans);//语言设置
```
