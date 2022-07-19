---
description: 收到 RESTAPI 下发的自定义系统消息
---

# OnReceiveRESTCustomDataCallback

## 回调函数功能描述

有新的加群请求（只有群主或管理员会收到）

## 回调函数模版

```dart
OnReceiveRESTCustomDataCallback = void Function(
String groupID,
String customData
)
```

## 回调函数参数说明

| 参数名称       | 参数类型   | 参数描述  |
| ---------- | ------ | ----- |
| groupID    | String | 群 ID  |
| customData | String | 自定义数据 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onReceiveRESTCustomData: (String groupID, String customData) async {
        //收到 RESTAPI 下发的自定义系统消息
        //groupID	群 ID
        //customData	自定义数据
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

