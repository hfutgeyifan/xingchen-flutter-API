---
description: 创建话题√
---

# createTopicInCommunity

## 功能介绍

创建话题

* 4.0.1及以上版本支持，就算为

{% hint style="info" %}
注意：

web版本不支持
{% endhint %}

## 参数详解

| 参数名称      | 参数类型                                                       | 是否必填 | 描述          |
| --------- | ---------------------------------------------------------- | ---- | ----------- |
| groupID   | String                                                     | 是    | 需要创建话题的群组id |
| topicInfo | [V2TimTopicInfo](../keyClass/topic/v2timtopicinfo.md) | 是    | 创建话题的设置     |

## 返回值

```dart
V2TimValueCallback<String>

{
    code : int
    desc : String
    data : String // 被创建话题的id
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | String | 被创建话题的id                                                       |

## 代码示例

```dart
    //创建话题
    V2TimTopicInfo topicInfo = V2TimTopicInfo(
      customString: "",// 话题自定义字段
      draftText: "",// 话题草稿
      groupAtInfoList: [],// 话题 at 信息列表
      introduction: "",// 话题介绍
      isAllMute: false,// 话题是否全员禁言
      lastMessage: null,// 话题最新消息
      notification: "",// 话题公告
      selfMuteTime: 0,// 当前用户在话题中的禁言时间
      topicFaceUrl: "",// 话题头像Url
      topicID: "",// 话题id
      topicName: "",// 话题名称
      unreadCount: 0,// 话题消息未读数量

    );
    V2TimValueCallback<String> createTopicInCommunityRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .createTopicInCommunity(
              groupID: "groupID",// 需要创建话题的群组id
              topicInfo: topicInfo,// 创建话题的设置
            );
    if (createTopicInCommunityRes.code == 0) {
      // 创建成功
      String? topicId = createTopicInCommunityRes.data;// 被创建话题的id
    }
```
