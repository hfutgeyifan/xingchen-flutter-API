---
description: 群 tips 消息会存消息列表，群里所有的人都会展示，比如 xxx 进群，xxx 退群，xxx 群资料被修改了等
---

# V2TimGroupTipsElem

## 关键类描述

群 tips 消息会存消息列表，群里所有的人都会展示，比如 xxx 进群，xxx 退群，xxx 群资料被修改了等

## 参数

### groupID

* 参数类型 : String
* 参数描述：群组 ID

### type

* 参数类型 : int
* 参数描述：群Tips类型

{% hint style="info" %}
1:主动入群（memberList 加入群组，非 Work 群有效）

2:被邀请入群（opMember 邀请 memberList 入群，Work 群有效）

3:退出群 (opMember 退出群组)

4:踢出群 (opMember 把 memberList 踢出群组)

5:设置管理员 (opMember 把 memberList 设置为管理员)

6:取消管理员 (opMember 取消 memberList 管理员身份)

7:群资料变更 (opMember 修改群资料： groupName & introduction & notification & faceUrl & owner & custom)

8:群成员资料变更 (opMember 修改群成员资料：muteTime)
{% endhint %}

### opMember

* 参数类型 : [V2TimGroupMemberInfo](v2timgroupmemberinfo.md)
* 参数描述：操作者群成员资料

### memberList

* 参数类型 : List< [V2TimGroupMemberInfo](v2timgroupmemberinfo.md) >
* 参数描述：被操作人列表

### groupChangeInfoList

* 参数类型 : List< V2TimGroupChangeInfo >
* 参数描述：群信息变更

### memberChangeInfoList

* 参数类型 : List< V2TimGroupMemberChangeInfo >
* 参数描述：成员变更

### memberCount

* 参数类型 : int
* 参数描述：当前群人数

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回查询群组用户信息结果的JSON格式
