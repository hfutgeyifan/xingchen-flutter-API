---
description: 获取加群的申请列表
---

# getGroupApplicationList

## API功能介绍

获取加群的申请列表

{% hint style="info" %}
注意：

web版本不支持
{% endhint %}

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TimValueCallback<V2TimGroupApplicationResult>

{
    code : int
    desc : String
    data : {
        groupApplicationList : List<V2TimGroupApplication?>// 申请加群信息
        unreadCount : int // 未读的申请数量
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                            | 描述                                                             |
| ---- | ----------------------------------------------- | -------------------------------------------------------------- |
| code | int                                             | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                          | 请求结果描述                                                         |
| data | [V2TimGroupApplicationResult](broken-reference) | 查询到的申请加群信息                                                     |

## 使用案例  &#x20;

```dart
    // 获取加群的申请列表
    V2TimValueCallback<V2TimGroupApplicationResult> getGroupApplicationListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupApplicationList();
    if (getGroupApplicationListRes.code == 0) {
      // 获取成功
      getGroupApplicationListRes.data?.groupApplicationList?.forEach((element) {
        element?.addTime;// 申请时间
        element?.fromUser;// 请求者 userID
        element?.fromUserFaceUrl;// 请求者头像
        element?.fromUserNickName;// 请求者昵称
        element?.groupID;// 申请的群组ID
        element?.handledMsg;// 审批信息：同意或拒绝信息
        element?.handleResult;// 处理结果 
        element?.handleStatus;// 处理标志 0:未处理 1:被他人处理 2:自己已处理
        element?.requestMsg;// 申请或邀请附加信息 0:拒绝申请 1:同意申请
        element?.toUser;// 判决者id，有人请求加群:0，邀请其他人加群:被邀请人用户 ID
        element?.type;// 请求类型 0:申请入群 1:邀请入群
      });
    }
```
