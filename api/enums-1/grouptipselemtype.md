---
description: 群通知消息类型
---

# GroupTipsElemType

## 枚举类型介绍

群通知消息类型

## V2TIM\_GROUP\_TIPS\_TYPE\_JOIN

枚举类型描述：主动入群（memberList 加入群组，非 Work 群有效）

枚举值：1

## V2TIM\_GROUP\_TIPS\_TYPE\_INVITE

枚举类型描述：被邀请入群（opMember 邀请 memberList 入群，Work 群有效）

枚举值：2

## V2TIM\_GROUP\_TIPS\_TYPE\_QUIT

枚举类型描述：退出群组

枚举值：3

## V2TIM\_GROUP\_TIPS\_TYPE\_KICKED

枚举类型描述：踢出群 (opMember 把 memberList 踢出群组)

枚举值：4

## V2TIM\_GROUP\_TIPS\_TYPE\_SET\_ADMIN

枚举类型描述：设置管理员 (opMember 把 memberList 设置为管理员)

枚举值：5

## V2TIM\_GROUP\_TIPS\_TYPE\_CANCEL\_ADMIN

枚举类型描述：取消管理员 (opMember 取消 memberList 管理员身份)

枚举值：6

## V2TIM\_GROUP\_TIPS\_TYPE\_GROUP\_INFO\_CHANGE

枚举类型描述：群资料变更 (opMember 修改群资料：groupName & introduction & notification & faceUrl & owner & custom)

枚举值：7

## V2TIM\_GROUP\_TIPS\_TYPE\_MEMBER\_INFO\_CHANGE

枚举类型描述：群成员资料变更 (opMember 修改群成员资料：muteTime)

枚举值：8
