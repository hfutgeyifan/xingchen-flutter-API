---
description: 删除话题
---

# deleteTopicFromCommunity

## API功能介绍

删除话题

* 4.0.1及以上版本支持。

{% hint style="info" %}
注意：&#x20;

web版本不支持
{% endhint %}

## 参数详解

| 参数名称        | 参数类型           | 是否必填 | 描述          |
| ----------- | -------------- | ---- | ----------- |
| groupID     | String         | 是    | 需要删除属性的群组id |
| topicIDList | List< String > | 是    | 删除的话题id列表   |

## 返回模板

```dart
V2TimValueCallback<List<V2TimTopicOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimTopicOperationResult>// 话题删除处理结果
}
```

## 返回参数详解

| 名称    | 数值类型                                                  | 描述                                                             |
| ----- | ----------------------------------------------------- | -------------------------------------------------------------- |
| code  | int                                                   | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc  | String                                                | 请求结果描述                                                         |
| data  | List< [V2TimTopicOperationResult](broken-reference) > | 话题删除处理结果                                                       |

## 使用案例  &#x20;

```dart
    // 删除话题
    V2TimValueCallback<List<V2TimTopicOperationResult>>
        deleteTopicFromCommunityRes = await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .deleteTopicFromCommunity(
      groupID: "groupID",// 需要删除属性的群组id
      topicIDList: [],// 删除的话题id列表
    );
    if (deleteTopicFromCommunityRes.code == 0) {
      // 删除成功
      deleteTopicFromCommunityRes.data?.forEach((element) {
        element.errorCode;// 删除处理结果错误码
        element.errorMessage;// 删除处理结果描述
        element.topicID;// 被删除的话题id
      });
    }

```
