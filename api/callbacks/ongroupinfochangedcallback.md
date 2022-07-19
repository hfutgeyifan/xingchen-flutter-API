---
description: 群信息被修改（全员能收到）
---

# OnGroupInfoChangedCallback

## 回调函数功能描述

群信息被修改（全员能收到）

## 回调函数模版

```dart
OnGroupInfoChangedCallback = void Function(
String groupID,
List<V2TimGroupChangeInfo> changeInfos
)
```

## 回调函数参数说明

| 参数名称        | 参数类型                                             | 参数描述   |
| ----------- | ------------------------------------------------ | ------ |
| groupID     | String                                           | 群 ID   |
| changeInfos | List< [V2TimGroupChangeInfo](broken-reference) > | 修改的群信息 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onGroupInfoChanged:
          (String groupID, List<V2TimGroupChangeInfo> changeInfos) async {
        //群成员信息被修改，仅支持禁言通知（全员能收到）。
        //groupID	群 ID
        //changeInfos	修改的群信息
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

