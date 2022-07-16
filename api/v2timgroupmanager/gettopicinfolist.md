---
description: 获取话题属性的列表
---

# getTopicInfoList

## API功能介绍

获取话题属性的列表

* 4.0.1及以上版本支持
* 当 topicIDList 列表为空时，为获取该社群下的所有话题列表
* 当 topicIDList 填入指定的话题 ID 时，为获取填入的话题列表

{% hint style="info" %}
注意：

web版本不支持
{% endhint %}

## 参数详解

| 参数名称        | 参数类型           | 是否必填 | 描述              |
| ----------- | -------------- | ---- | --------------- |
| groupID     | String         | 是    | 需要获取话题属性的群组id   |
| topicIDList | List< String > | 是    | 需要获取话题属性的话题id列表 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimTopicInfoResult>>

{
    code : int
    desc : String
    data : List<V2TimTopicInfoResult>// 获取到的话题信息列表
}
```

## 返回参数详解

| 名称   | 数值类型                                                                      | 描述                                                             |
| ---- | ------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                       | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                    | 请求结果描述                                                         |
| data | List< [V2TimTopicInfoResult](../../class/topic/v2timtopicinforesult.md) > | 获取到的话题信息列表                                                     |

## 使用案例  &#x20;

```dart
    // 获取话题属性的列表
    V2TimValueCallback<List<V2TimTopicInfoResult>> getTopicInfoListoRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getTopicInfoList(
      groupID: "groupID",// 需要获取话题属性的群组id
      topicIDList: [],// 需要获取话题属性的话题id列表
    );
    if (getTopicInfoListoRes.code == 0) {
      // 查询成功
      getTopicInfoListoRes.data?.forEach((element) {
        element.errorCode;// 查询结果错误码
        element.errorMessage;。// 查询结果描述
        element.topicInfo?.customString;// 此条话题的自定义信息
        element.topicInfo?.draftText;// 此条话题的草稿
        element.topicInfo?.groupAtInfoList;// 此条话题的@信息列表
        element.topicInfo?.introduction;// 此条话题的介绍
        element.topicInfo?.isAllMute;// 此条话题是否全员禁言
        element.topicInfo?.lastMessage;// 此条话题的最新消息
        element.topicInfo?.notification;// 此条话题的公告
        element.topicInfo?.recvOpt;// 此条话题的话题消息接收选项
        element.topicInfo?.selfMuteTime;// 当前用户在此条话题中的禁言时间
        element.topicInfo?.topicFaceUrl;// 此条话题的头像Url
        element.topicInfo?.topicID;// 此条话题的id
        element.topicInfo?.unreadCount;// 此条话题的消息未读数量
      });
    }
```
