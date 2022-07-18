---
description: 搜索本地消息
---

# searchLocalMessages

## API功能介绍

搜索本地消息

{% hint style="info" %}
注意： web不支持该接口
{% endhint %}

## 参数详解

| 参数名称        | 参数类型                                                                           | 是否必填 | 描述     |
| ----------- | ------------------------------------------------------------------------------ | ---- | ------ |
| searchParam | [V2TimMessageSearchParam](../guan-jian-lei/message/v2timmessagesearchparam.md) | 是    | 搜索设置参数 |

## 返回模板

```dart
V2TimValueCallback<V2TimMessageSearchResult>

{
    code : int
    desc : String
    data : {
      messageSearchResultItems : List<V2TimMessageSearchResultItem>// 符合搜索条件的消息列表
      totalCount : int // 符合搜索条件的消息数量
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                                                             | 描述                                                             |
| ---- | -------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                              | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                           | 请求结果描述                                                         |
| data | [V2TimMessageSearchResult](../guan-jian-lei/message/v2timmessagesearchresult.md) | 符合搜索条件的所有信息                                                    |

## 使用案例  &#x20;

```dart
    // 创建消息搜索设置参数
    V2TimMessageSearchParam searchParam = new V2TimMessageSearchParam(
          conversationID: "",// conversationID == null，代表搜索全部会话，conversationID != null，代表搜索指定会话。
          keywordList: [],// 关键字列表，最多支持5个。当消息发送者以及消息类型均未指定时，关键字列表必须非空；否则，关键字列表可以为空。
          type: 0,// 
          userIDList: [],// 指定 userID 发送的消息，最多支持5个。
          messageTypeList: [],// 消息类型过滤列表
          searchTimePeriod: 0,// 从起始时间点开始的过去时间范围，单位秒。默认为0即代表不限制时间范围，传24x60x60代表过去一天。
          searchTimePosition: 0,// 搜索的起始时间点。默认为0即代表从现在开始搜索。UTC 时间戳，单位：秒
          pageIndex: 0,// 分页的页号：用于分页展示查找结果，从零开始起步。
          pageSize: 10);// 每页结果数量：用于分页展示查找结果，如不希望分页可将其设置成 0，但如果结果太多，可能会带来性能问题。默认为100。
    // 搜索历史信息
    V2TimValueCallback<V2TimMessage> searchLocalMessagesRes = await TencentImSDKPlugin
    .v2TIMManager
    .getMessageManager()
    .searchLocalMessages(
        searchParam:searchParam
    );
    if(searchLocalMessagesRes.code == 0){
      // 搜索成功
    }
  
```
