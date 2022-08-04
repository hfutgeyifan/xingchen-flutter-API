---
description: 有用户加入群（全员能够收到）
---

# OnMemberEnterCallback

## 功能介绍

有用户加入群（全员能够收到）

## 回调函数模版

```dart
OnMemberEnterCallback = void Function(
String groupID,
List<V2TimGroupMemberInfo> memberList
)
```

## 参数详解

| 参数名称       | 参数类型                                                                           | 参数描述  |
| ---------- | ------------------------------------------------------------------------------ | ----- |
| groupID    | String                                                                         | 群 ID  |
| memberList | List< [V2TimGroupMemberInfo](../keyClass/group/v2timgroupmemberinfo.md) > | 加入的成员 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onMemberEnter:
          (String groupID, List<V2TimGroupMemberInfo> memberList) async {
        //有用户加入群（全员能够收到）
        //groupID	群 ID
        //memberList	加入的成员
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
