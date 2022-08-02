---
description: 设置离线推送状态√
---

# setOfflinePushStatus

## 功能介绍

设置离线推送状态

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述                                                                                   |
| ------- | ------ | ---- | ------------------------------------------------------------------------------------ |
| status  | [AppStatus](AppStatus.md) | 是    | App状态                                                                           |
| totalCount | String | 否    | 消息未读数量 |

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
    //使用TIMUIKitCore.getInstance()进行设置离线推送状态
    final CoreServicesImpl coreInstance = TIMUIKitCore.getInstance();
    V2TimCallback data = await coreInstance.setOfflinePushStatus(
      status: AppStatus.foreground,//App状态
      totalCount: 0,//消息未读数量
    );
    if (data.code == 0) {
      // 设置成功
    }
```
