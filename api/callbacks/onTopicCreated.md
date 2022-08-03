---
description: 话题创建通知
---

# OnTopicCreated

## 功能介绍

话题创建通知

## 回调函数模版

```dart
OnTopicCreated = void Function(String groupID, String topicID);
```

## 参数详解

| 参数名称       | 参数类型                                                                           | 参数描述    |
| ---------- | ------------------------------------------------------------------------------ | ------- |
| groupID    | String                                                                         | 创建话题的群组id   |
| topicID    | String         | 创建的话题id     |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
        onTopicCreated: (String groupID, String topicID) async {
      //话题创建通知
      //groupID	创建话题的群组id
      //topicID	创建的话题id
    });
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
