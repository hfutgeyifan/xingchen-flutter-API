---
description: 创建视频文件
---

# createVideoMessage

## API功能介绍

创建视频文件

## 参数详解

| 参数名称          | 参数类型      | 是否必填      | 描述        |
| ------------- | --------- | --------- | --------- |
| videoFilePath | String    | 是         | 视频文件本地路径  |
| type          | String    | 是         | 视频类型      |
| duration      | int       | 是         | 视频时长，单位 s |
| snapshotPath  | String    | 是         | 视频封面图片路径  |
| fileName      | String    | 否（web端必填） | 文件名       |
| fileContent   | Uint8List | 否（web端必填） | 字节数组      |

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

| 名称   | 数值类型                                                          | 描述                                                             |
| ---- | ------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                           | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                        | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../../class/v2timsdklistener-1.md) | 创建后的视频信息                                                       |

## 使用案例  &#x20;

```dart
// 创建视频消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createVideoMessageRes =
      await TencentImSDKPlugin.v2TIMManager
          .getMessageManager()
          .createVideoMessage(
            videoFilePath: "本地视频文件绝对路径",
            type: "mp4", // 视频类型 会在接收的消息属性里显示，一般用于回显文件类型
            duration: 10,// 视频时长 会在接收的消息属性里显示，一般用于回显文件属性
            snapshotPath: "本地视频封面文件绝对路径",
          );
  if (createVideoMessageRes.code == 0) {
    String id = createVideoMessageRes.data.id;
       // 发送视频消息
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
