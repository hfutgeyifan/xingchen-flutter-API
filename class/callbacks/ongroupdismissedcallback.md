---
description: 群被解散了（全员能收到）
---

# OnGroupDismissedCallback

## 回调函数功能描述

群被解散了（全员能收到）

## 回调函数模版

```dart
OnGroupDismissedCallback = void Function(
String groupID,
V2TimGroupMemberInfo opUser
)
```

## 回调函数参数说明

| 参数名称    | 参数类型                                                                          | 参数描述 |
| ------- | ----------------------------------------------------------------------------- | ---- |
| groupID | String                                                                        | 群 ID |
| opUser  | [V2TimGroupMemberInfo](../../api/guan-jian-lei/group/v2timgroupmemberinfo.md) | 处理人  |

## 使用案例

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

