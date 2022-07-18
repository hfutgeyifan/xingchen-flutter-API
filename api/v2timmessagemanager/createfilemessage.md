---
description: 创建文件消息
---

# createFileMessage

## API功能介绍

创建文件消息

* 创建文件消息需要先获取到本地文件路径。
* 发送消息过程中，会先将文件上传至服务器，同时回调上传进度。上传成功后再发送消息。

## 参数详解

| 参数名称        | 参数类型      | 是否必填      | 描述       |
| ----------- | --------- | --------- | -------- |
| filePath    | String    | 是         | 视频文件本地路径 |
| fileName    | String    | 是         | 文件名      |
| fileContent | Uint8List | 否（web端必填） | 字节数组     |

## 返回模板

```dart
V2TimValueCallback<V2TimMsgCreateInfoResult>

{
    code : int
    desc : String
    data : {
      id : String
      messageInfo : V2TimMessage
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                         | 描述                                                             |
| ---- | -------------------------------------------- | -------------------------------------------------------------- |
| code | int                                          | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                       | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](broken-reference) | 创建后的文件信息                                                       |

## 使用案例  &#x20;

```dart
// 创建文件消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createFileMessageRes =
      await TencentImSDKPlugin.v2TIMManager
          .getMessageManager()
          .createFileMessage(
            filePath: "本地文件绝对路径",
            fileName: "文件名",
          );
  if (createFileMessageRes.code == 0) {
    String id = createFileMessageRes.data.id;
       // 发送文件消息
       // 在sendMessage时，若只填写receiver则发个人用户单聊消息
       //                 若只填写groupID则发群组消息
       //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .sendMessage(id: id, receiver: "userID", groupID: "groupID");
    if (sendMessageRes.code == 0) {
      // 发送成功
    }
  }
```
