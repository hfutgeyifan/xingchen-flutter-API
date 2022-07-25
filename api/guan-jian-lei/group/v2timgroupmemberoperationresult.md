---
description: 邀请其他人入群的操作结果
---

# V2TimGroupMemberOperationResult

## 关键类描述

邀请其他人入群的操作结果

## 参数

### memberID

* 参数类型 : String
* 参数描述 : 被操作成员 ID

### result

* 参数类型 : int
* 参数描述 : 返回状态

{% hint style="info" %}
0:操作失败

1:操作成功

2:无效操作，加群时已经是群成员，移除群组时不在群内

3:等待处理，邀请入群时等待对方处理

4:操作失败，创建群指定初始群成员列表或邀请入群时，被邀请者加入的群总数超限
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回邀请其他人入群的操作结果的JSON格式
