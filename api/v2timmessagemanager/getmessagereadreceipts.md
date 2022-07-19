---
description: 获取消息已读回执
---

# getMessageReadReceipts

## 功能介绍

获取消息已读回执

* 该功能需要购买旗舰版套餐包，购买 [旗舰版套餐包](https://buy.cloud.tencent.com/avc?from=17220) 后可使用。

{% hint style="info" %}
1. 3.9.3及以上版本支持
2. 该接口暂时只支持 Group 消息。 messageIDList 里的消息Id必须在同一个 Group 会话中。
{% endhint %}

## 参数详解

| 参数名称          | 参数类型           | 是否必填 | 描述              |
| ------------- | -------------- | ---- | --------------- |
| messageIDList | List< String > | 是    | 需要查询已读回执消息的id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimMessageReceipt>>

{
    code : int
    desc : String
    data : List<V2TimMessageReceipt>
}
```

## 返回值详解

| 名称   | 数值类型                                                                            | 描述                                                             |
| ---- | ------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                             | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                          | 请求结果描述                                                         |
| data | List< [V2TimMessageReceipt](../guan-jian-lei/message/v2timmessagereceipt.md)  > | 消息已读回执信息列表                                                     |

## 代码示例  &#x20;

```dart
    // 查询消息已读回执
    V2TimValueCallback<List<V2TimMessageReceipt>> getMessageReadReceipts =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .getMessageReadReceipts(messageIDList: []);// 需要查询的的消息id列表
    if (getMessageReadReceipts.code == 0) {
      getMessageReadReceipts.data.forEach((element) {
        // 解析群消息已读回执
        element.groupID;// 消息的群组id
        element.msgID;// 消息的id
        element.readCount;// 群消息已读人数
        element.timestamp;
        element.unreadCount;// 群消息未读人数
        element.userID;// 发送此消息的用户id
      });
    }
```
