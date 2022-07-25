---
description: 群被解散了（全员能收到）
---

# OnGroupDismissedCallback

## 功能介绍

群被解散了（全员能收到）

## 回调函数模版

```dart
OnGroupDismissedCallback = void Function(
String groupID,
V2TimGroupMemberInfo opUser
)
```

## 参数详解

| 参数名称    | 参数类型                                                                   | 参数描述 |
| ------- | ---------------------------------------------------------------------- | ---- |
| groupID | String                                                                 | 群 ID |
| opUser  | [V2TimGroupMemberInfo](../guan-jian-lei/group/v2timgroupmemberinfo.md) | 处理人  |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onGroupDismissed: (String groupID, V2TimGroupMemberInfo opUser) async {
        //群被解散了（全员能收到）
        //groupID	群 ID
        //opUser	处理人
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
