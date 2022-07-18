---
description: 设置话题属性
---

# setTopicInfo

## API功能介绍

设置话题属性

* 4.0.1及以上版本支持

{% hint style="info" %}
注意：

web版本不支持
{% endhint %}

## 参数详解

| 参数名称      | 参数类型                               | 是否必填 | 描述         |
| --------- | ---------------------------------- | ---- | ---------- |
| topicInfo | [V2TimTopicInfo](broken-reference) | 是    | 需要修改的话题的设置 |

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
    // 设置话题属性 通过topicInfo中的topicID确定需要修改的话题
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
      topicID: "",// 需要修改的话题的id
      topicName: "",// 话题名称
      unreadCount: 0,// 话题消息未读数量
    );
    V2TimCallback setTopicInfoRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .setTopicInfo(
              topicInfo: topicInfo,// 需要修改的话题的设置
            );
    if (setTopicInfoRes.code == 0) {
      // 设置成功
    }

```
