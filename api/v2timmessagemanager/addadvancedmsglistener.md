---
description: 添加高级消息的事件监听器√
---

# addAdvancedMsgListener

## 功能介绍

添加高级消息的事件监听器

* 通过 `addAdvancedMsgListener` 监听接收所有类型消息（文本、自定义、富媒体消息），相关回调在 [`V2TimAdvancedMsgListener`](../keyClass/listener/v2timadvancedmsglistener.md) 中定义。

{% hint style="info" %}
注意：

使用addAdvancedMsgListener会在所有的高级消息监听器列表中新增一个高级消息监听器。
{% endhint %}

## 参数详解

| 参数名称     | 参数类型                                                                              | 是否必填 | 描述      |
| -------- | --------------------------------------------------------------------------------- | ---- | ------- |
| listener | [V2TimAdvancedMsgListener](../keyClass/listener/v2timadvancedmsglistener.md) | 是    | 高级消息监听器 |

## 返回值

```dart
Future<void>
```

## 返回值详解

{% hint style="info" %}
此方法无返回值
{% endhint %}

## 代码示例  &#x20;

```dart
    // 创建消息监听器
    V2TimAdvancedMsgListener listener = V2TimAdvancedMsgListener(
      onRecvC2CReadReceipt: (List<V2TimMessageReceipt> receiptList) {
        //单聊已读回调
      },
      onRecvMessageModified: (V2TimMessage message) {
        // msg 为被修改之后的消息对象
      },
      onRecvMessageReadReceipts: (List<V2TimMessageReceipt> receiptList) {
        //群聊已读回调
        receiptList.forEach((element) {
          element.groupID; // 群id
          element.msgID; // 已读回执消息 ID
          element.readCount; // 群消息最新已读数
          element.unreadCount; // 群消息最新未读数
          element.userID; //  C2C 消息对方 ID
        });
      },
      onRecvMessageRevoked: (String messageid) {
        // 在本地维护的消息中处理被对方撤回的消息
      },
      onRecvNewMessage: (V2TimMessage message) async {
        // 处理文本消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_TEXT) {
          message.textElem?.text;
        }
        // 使用自定义消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_CUSTOM) {
          message.customElem?.data;
          message.customElem?.desc;
          message.customElem?.extension;
        }
        // 使用图片消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_IMAGE) {
          message.imageElem
              ?.path; // 图片上传时的路径，消息发送者才会有这个字段，消息发送者可用这个字段将图片预先上屏，优化上屏体验。
          message.imageElem?.imageList?.forEach((element) {
            // 遍历大图、原图、缩略图
            // 解析图片属性
            element?.height;
            element?.localUrl;
            element?.size;
            element?.type; // 大图 缩略图 原图
            element?.url;
            element?.uuid;
            element?.width;
          });
        }
        // 处理视频消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_VIDEO) {
          // 解析视频消息属性，封面、播放地址、宽高、大小等。
          message.videoElem?.UUID;
          message.videoElem?.duration;
          message.videoElem?.localSnapshotUrl;
          message.videoElem?.localVideoUrl;
          message.videoElem?.snapshotHeight;
          message.videoElem?.snapshotPath;
          // ...
        }
        // 处理音频消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_SOUND) {
          // 解析语音消息 播放地址，本地地址，大小，时长等。
          message.soundElem?.UUID;
          message.soundElem?.dataSize;
          message.soundElem?.duration;
          message.soundElem?.localUrl;
          message.soundElem?.url;
          // ...
        }
        // 处理文件消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_FILE) {
          // 解析文件消息 文件名、文件大小、url等
          message.fileElem?.UUID;
          message.fileElem?.fileName;
          message.fileElem?.fileSize;
          message.fileElem?.localUrl;
          message.fileElem?.path;
          message.fileElem?.url;
        }
        // 处理位置消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_LOCATION) {
          // 解析地理位置消息，经纬度、描述等
          message.locationElem?.desc;
          message.locationElem?.latitude;
          message.locationElem?.longitude;
        }
        // 处理表情消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_FACE) {
          message.faceElem?.data;
          message.faceElem?.index;
        }
        // 处理群组tips文本消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_GROUP_TIPS) {
          message.groupTipsElem?.groupID; // 所属群组
          message.groupTipsElem?.type; // 群Tips类型
          message.groupTipsElem?.opMember; // 操作人资料
          message.groupTipsElem?.memberList; // 被操作人资料
          message.groupTipsElem?.groupChangeInfoList; // 群信息变更详情
          message.groupTipsElem?.memberChangeInfoList; // 群成员变更信息
          message.groupTipsElem?.memberCount; // 当前群在线人数
        }
        // 处理合并消息消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_MERGER) {
          message.mergerElem?.abstractList;
          message.mergerElem?.isLayersOverLimit;
          message.mergerElem?.title;
          V2TimValueCallback<List<V2TimMessage>> download =
              await TencentImSDKPlugin.v2TIMManager
                  .getMessageManager()
                  .downloadMergerMessage(
                    msgID: message.msgID!,
                  );
          if (download.code == 0) {
            List<V2TimMessage>? messageList = download.data;
          }
        }
        if (message.textElem?.nextElem != null) {
          //通过第一个 Elem 对象的 nextElem 方法获取下一个 Elem 对象，如果下一个 Elem 对象存在，会返回 Elem 对象实例，如果不存在，会返回 null。
        }
      },
      onSendMessageProgress: (V2TimMessage message, int progress) {
        //文件上传进度回调
      },
    );
    // 添加高级消息的事件监听器
    TencentImSDKPlugin.v2TIMManager
        .getMessageManager()
        .addAdvancedMsgListener(listener: listener);
```
