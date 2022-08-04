---
description: 话题信息更新通知
---

# OnTopicInfoChanged

## 功能介绍

话题信息更新通知

## 回调函数模版

```dart
OnTopicInfoChanged = void Function(
    String groupID, V2TimTopicInfo topicInfo);
```

## 参数详解

| 参数名称       | 参数类型                                                                           | 参数描述    |
| ---------- | ------------------------------------------------------------------------------ | ------- |
| groupID    | String                                                                         | 话题信息更新的群组id   |
| topicInfo    | [V2TimTopicInfo](../keyClass/topic/v2timtopicinfo.md)          | 话题信息更新的属性     |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
        onTopicInfoChanged: (String groupID, V2TimTopicInfo topicInfo) async {
      //话题信息更新通知
      //groupID	话题信息更新的群组id
      //topicInfo	话题信息更新的属性
    });
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
