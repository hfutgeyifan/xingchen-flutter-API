---
description: 群被回收（全员能收到）
---

# OnGroupRecycledCallback

## 功能介绍

群被回收（全员能收到）

## 回调函数模版

```dart
OnGroupRecycledCallback = void Function(
String groupID,
V2TimGroupMemberInfo opUser
)
```

## 参数详解

| 参数名称    | 参数类型                                                                   | 参数描述 |
| ------- | ---------------------------------------------------------------------- | ---- |
| groupID | String                                                                 | 群 ID |
| opUser  | [V2TimGroupMemberInfo](../keyClass/group/v2timgroupmemberinfo.md) | 处理人  |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onGroupRecycled: (String groupID, V2TimGroupMemberInfo opUser) async {
        //群被回收（全员能收到）
        //groupID	群 ID
        //opUser	处理人
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
