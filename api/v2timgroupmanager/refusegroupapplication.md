---
description: 拒绝某一条加群申请√
---

# refuseGroupApplication

## 功能介绍

拒绝某一条加群申请

{% hint style="info" %}
注意：

web 端使用时必须传入webMessageInstance 字段。 对应【群系统通知】的消息实例
{% endhint %}

## 参数详解

| 参数名称               | 参数类型                                                             | 是否必填      | 描述             |
| ------------------ | ---------------------------------------------------------------- | --------- | -------------- |
| groupID            | String                                                           | 是         | 加入的群组id        |
| reason             | String                                                           | 否         | 拒绝原因           |
| fromUser           | String                                                           | 是         | 请求者id          |
| toUser             | String                                                           | 是         | 判决者id          |
| addTime            | int                                                              | 否         | 申请时间           |
| type               | [GroupApplicationTypeEnum](../enums/groupapplicationtypeenum.md) | 否         | 申请类型           |
| webMessageInstance | String                                                           | 否（web端必填） | 对应【群系统通知】的消息实例 |

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

## 代码示例

```dart
    // 获取加群列表
    V2TimValueCallback<V2TimGroupApplicationResult> getGroupApplicationListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupApplicationList();
    if (getGroupApplicationListRes.code == 0) {
      // 获取成功
      getGroupApplicationListRes.data?.groupApplicationList
          ?.forEach((element) async {
        if (element != null) {
          V2TimCallback refuseGroupApplicationRes = await TencentImSDKPlugin
              .v2TIMManager
              .getGroupManager()
              .refuseGroupApplication(
                groupID: element.groupID, // 加入的群组id
                fromUser: element.fromUser!, //  请求者id
                toUser: element.toUser!, // 判决者id
                reason: "", // 拒绝原因
                addTime: element.addTime!, // 申请时间
                type: GroupApplicationTypeEnum.values[element.type], // 申请类型
                webMessageInstance: "", // 对应【群系统通知】的消息实例
              );
          if (refuseGroupApplicationRes.code == 0) {
            // 拒绝成功
          }
        }
      });
    }
```
