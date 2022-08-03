---
description: 话题删除通知
---

# OnTopicDeleted

## 功能介绍

话题删除通知

## 回调函数模版

```dart
OnTopicDeleted = void Function(
    String groupID, List<String> topicIDList);
```

## 参数详解

| 参数名称       | 参数类型                                                                           | 参数描述    |
| ---------- | ------------------------------------------------------------------------------ | ------- |
| groupID    | String                                                                         | 删除话题的群组id   |
| topicIDList    | List< String >          | 删除的话题id列表     |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
        onTopicDeleted: (String groupID, List<String> topicIDList) async {
      //话题创建通知
      //groupID	删除话题的群组id
      //topicIDList	删除的话题id列表
    });
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
