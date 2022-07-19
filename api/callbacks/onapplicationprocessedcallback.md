---
description: 加群请求已经被群主或管理员处理了（只有申请人能够收到）
---

# OnApplicationProcessedCallback

## 回调函数功能描述

加群请求已经被群主或管理员处理了（只有申请人能够收到）

## 回调函数模版

```dart
OnApplicationProcessedCallback = void Function(
String groupID,
V2TimGroupMemberInfo opUser,
bool isAgreeJoin,
String opReason
)
```

## 回调函数参数说明

| 参数名称        | 参数类型                                                                   | 参数描述   |
| ----------- | ---------------------------------------------------------------------- | ------ |
| groupID     | String                                                                 | 群 ID   |
| opUser      | [V2TimGroupMemberInfo](../guan-jian-lei/group/v2timgroupmemberinfo.md) | 处理人    |
| isAgreeJoin | bool                                                                   | 是否同意加群 |
| opReason    | String                                                                 | 处理原因   |

## 代码示例

```dart
        //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onApplicationProcessed: (String groupID, V2TimGroupMemberInfo opUser,
          bool isAgreeJoin, String opReason) async {
        //加群请求已经被群主或管理员处理了（只有申请人能够收到）
        //groupID	群 ID
        //opUser	处理人
        //isAgreeJoin	是否同意加群
        //opReason	处理原因
      },
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
