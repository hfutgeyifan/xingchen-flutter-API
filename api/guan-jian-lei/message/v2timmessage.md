---
description: 消息属性
---

# V2TIMMessage

## 关键类描述

消息属性

## 参数

### msgID

* 参数类型 : String
* 参数描述：消息 ID（消息创建的时候为 nil，消息发送的时候会生成）

### timestamp

* 参数类型 : int
* 参数描述：消息时间戳

### progress

* 参数类型 : int
* 参数描述：消息中文件上传进度  取值范围为0-100

### sender

* 参数类型 : String
* 参数描述：消息发送者

### nickName

* 参数类型 : String
* 参数描述：消息发送者昵称

### friendRemark

* 参数类型 : String
* 参数描述：消息发送者好友备注

### faceUrl

* 参数类型 : String
* 参数描述：消息发送者头像

### nameCard

* 参数类型 : String
* 参数描述：如果是群组消息，nameCard 为发送者的群名片

### groupID

* 参数类型 : String
* 参数描述：如果是群组消息，groupID 为会话群组 ID，否则为 nil

### userID

* 参数类型 : String
* 参数描述：如果是单聊消息，userID 为会话用户 ID，否则为 nil， 假设自己和 userA 聊天，无论是自己发给 userA 的消息还是 userA 发给自己的消息，这里的 userID 均为 userA

### status

* 参数类型 : int
* 参数描述：消息发送状态

{% hint style="info" %}
1:消息发送中

2:消息发送成功

3:消息发送失败

4:消息被删除

5:导入到本地的消息

6:被撤销的消息
{% endhint %}

### elemType

* 参数类型 : int
* 参数描述：消息类型

{% hint style="info" %}
0:未知消息

1:文本消息

2:自定义消息

3:图片消息

4:语音消息

5:视频消息

6:文件消息

7:地理位置消息

8:表情消息

9:群 Tips 消息

10:合并消息
{% endhint %}

### textElem

* 参数类型 : [V2TimTextElem](v2timtextelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_TEXT，textElem 会存储文本消息内容

### customElem

* 参数类型 : [V2TimCustomElem](v2timcustomelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_CUSTOM，customElem 会存储自定义消息内容

### imageElem

* 参数类型 : [V2TimImageElem](v2timfaceelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_IMAGE，imageElem 会存储图片消息内容

### soundElem

* 参数类型 : [V2TimSoundElem](v2timsoundelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_SOUND，soundElem 会存储语音消息内容

### videoElem

* 参数类型 : [V2TimVideoElem](v2timvideoelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_VIDEO，videoElem 会存储视频消息内容

### fileElem

* 参数类型 : [V2TimFileElem](v2timfileelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_FILE，fileElem 会存储文件消息内容

### locationElem

* 参数类型 : [V2TimLocationElem](v2timlocationelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_LOCATION，locationElem 会存储地理位置消息内容

### faceElem

* 参数类型 : [V2TimFaceElem](v2timfaceelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_FACE，faceElem 会存储表情消息内容

### groupTipsElem

* 参数类型 : [V2TimGroupTipsElem](../group/v2timgrouptipselem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_GROUP\_TIPS，groupTipsElem 会存储群 tips 消息内容

### mergerElem

* 参数类型 : [V2TimMergerElem](v2timmergerelem.md)
* 参数描述：消息类型 为 V2TIM\_ELEM\_TYPE\_MERGER，mergerElem 会存储转发消息内容

### localCustomData

* 参数类型 : String
* 参数描述：消息自定义数据（本地保存，不会发送到对端，程序卸载重装后失效）

### localCustomInt

* 参数类型 : int
* 参数描述：消息自定义数据,可以用来标记语音、视频消息是否已经播放（本地保存，不会发送到对端，程序卸载重装后失效）

### cloudCustomData

* 参数类型 : String
* 参数描述：消息自定义数据（云端保存，会发送到对端，程序卸载重装后还能拉取到）

### isSelf

* 参数类型 : bool
* 参数描述：消息发送者是否是自己

### isRead

* 参数类型 : bool
* 参数描述：消息自己是否已读

### isPeerRead

* 参数类型 : bool
* 参数描述：消息对方是否已读（只有 C2C 消息有效） 该字段为true的条件是消息 timestamp <= 对端标记会话已读的时间

### priority

* 参数类型 : int
* 参数描述：消息优先级（只有 onRecvNewMessage 收到的 V2TIMMessage 获取有效）

### offlinePushInfo

* 参数类型 : [V2TimOfflinePushInfo](v2timofflinepushinfo.md)
* 参数描述：消息的离线推送信息

### groupAtUserList

* 参数类型 : List< String >
* 参数描述：群消息中被 @ 的用户 UserID 列表（即该消息都 @ 了哪些人）

### seq

* 参数类型 : bool
* 参数描述：群聊中的消息序列号云端生成，在群里是严格递增且唯一的, 单聊中的序列号是本地生成，不能保证严格递增且唯一。

### random

* 参数类型 : int
* 参数描述：消息随机码

### isExcludedFromUnreadCount

* 参数类型 : bool
* 参数描述：消息是否不计入会话未读数：默认为 NO，表明需要计入会话未读数，设置为 YES，表明不需要计入会话未读数（5.3.425 及以上版本支持）

### isExcludedFromLastMessage

* 参数类型 : bool
* 参数描述：消息是否不计入会话 lastMsg：默认为 NO，表明需要计入会话 lastMsg，设置为 YES，表明不需要计入会话 lastMsg（5.4.666 及以上版本支持）

### messageFromWeb

* 参数类型 : String
* 参数描述：WEB端传递到flutter端的文本数据

### id

* 参数类型 : String
* 参数描述：plugin自己维护的id，在onProgressListener的监听中才返回

### needReadReceipt

* 参数类型 : bool
* 参数描述：消息是否需要已读回执（6.1 以上版本有效，需要您购买旗舰版套餐） 群消息在使用该功能之前，需要先到 IM 控制台设置已读回执支持的群类型

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回消息属性的JSON格式
