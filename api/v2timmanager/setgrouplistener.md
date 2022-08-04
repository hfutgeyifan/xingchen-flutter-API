---
description: 设置群组监听器√
---

# setGroupListener

## 功能介绍

设置群组监听器

{% hint style="info" %}
注意：

会议群（Meeting）和直播群（AVChatRoom）默认无[onMemberInfoChanged](../callbacks/onmemberinfochangedcallback.md)()回调，如需回调请提交工单配置

在web端时，不支持[onQuitFromGroup](../callbacks/onquitfromgroupcallback.md)回调

使用setGroupListener会覆盖群组监听器列表中最新设置的监听器。
{% endhint %}

## 参数详解

| 参数名称     | 参数类型                                                                  | 是否必填 | 描述        |
| -------- | --------------------------------------------------------------------- | ---- | --------- |
| listener | [V2TimGroupListener](../keyClass/listener/v2timgrouplistener.md) | 是    | 需要设置群组监听器 |

## 返回值

```dart
void
```

## 返回值详解

{% hint style="info" %}
此方法无返回值
{% endhint %}

## 代码示例  &#x20;

```dart
    //设置群组监听器属性
    V2TimGroupListener listener = V2TimGroupListener(
      onApplicationProcessed: (String groupID, V2TimGroupMemberInfo opUser,
          bool isAgreeJoin, String opReason) async {
        //加群请求已经被群主或管理员处理了（只有申请人能够收到）
        //groupID	群 ID
        //opUser	处理人
        //isAgreeJoin	是否同意加群
        //opReason	处理原因
      },
      onGrantAdministrator: (String groupID, V2TimGroupMemberInfo opUser,
          List<V2TimGroupMemberInfo> memberList) async {
        //指定管理员身份
        //groupID	群 ID
        //opUser	处理人
        //memberList	被处理的群成员
      },
      onGroupAttributeChanged:
          (String groupID, Map<String, String> groupAttributeMap) async {
        //收到群属性更新的回调
        //groupID	群 ID
        //groupAttributeMap	群的所有属性
      },
      onGroupCreated: (String groupID) async {
        //创建群（主要用于多端同步）
        //groupID	群 ID
      },
      onGroupDismissed: (String groupID, V2TimGroupMemberInfo opUser) async {
        //群被解散了（全员能收到）
        //groupID	群 ID
        //opUser	处理人/
      },
      onGroupInfoChanged:
          (String groupID, List<V2TimGroupChangeInfo> changeInfos) async {
        //群信息被修改（全员能收到）
        //groupID	群 ID
        //changeInfos	修改的群信息
      },
      onGroupRecycled: (String groupID, V2TimGroupMemberInfo opUser) async {
        //群被回收（全员能收到）
        //groupID	群 ID
        //opUser	处理人
      },
      onMemberEnter:
          (String groupID, List<V2TimGroupMemberInfo> memberList) async {
        //有用户加入群（全员能够收到）
        //groupID	群 ID
        //memberList	加入的成员
      },
      onMemberInfoChanged: (String groupID,
          List<V2TimGroupMemberChangeInfo>
              v2TIMGroupMemberChangeInfoList) async {
        //群成员信息被修改，仅支持禁言通知（全员能收到）。
        //groupID	群 ID
        //v2TIMGroupMemberChangeInfoList	被修改的群成员信息
      },
      onMemberInvited: (String groupID, V2TimGroupMemberInfo opUser,
          List<V2TimGroupMemberInfo> memberList) async {
        //某些人被拉入某群（全员能够收到）
        //groupID	群 ID
        //opUser	处理人
        //memberList	被拉进群成员
      },
      onMemberKicked: (String groupID, V2TimGroupMemberInfo opUser,
          List<V2TimGroupMemberInfo> memberList) async {
        //某些人被踢出某群（全员能够收到）
        //groupID	群 ID
        //opUser	处理人
        //memberList	被踢成员
      },
      onMemberLeave: (String groupID, V2TimGroupMemberInfo member) async {
        //有用户离开群（全员能够收到）
        //groupID	群 ID
        //member	离开的成员
      },
      onQuitFromGroup: (String groupID) async {
        //主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持）
        //groupID	群 ID
      },
      onReceiveJoinApplication:
          (String groupID, V2TimGroupMemberInfo member, String opReason) async {
        //有新的加群请求（只有群主或管理员会收到）
        //groupID	群 ID
        //member	申请人
        //opReason	申请原因
      },
      onReceiveRESTCustomData: (String groupID, String customData) async {
        //收到 RESTAPI 下发的自定义系统消息
        //groupID	群 ID
        //customData	自定义数据
      },
      onRevokeAdministrator: (String groupID, V2TimGroupMemberInfo opUser,
          List<V2TimGroupMemberInfo> memberList) async {
        //取消管理员身份
        //groupID	群 ID
        //opUser	处理人
        //memberList	被处理的群成员
      },
    );
    //设置群组监听器
    TencentImSDKPlugin.v2TIMManager.setGroupListener(listener: listener);
```
