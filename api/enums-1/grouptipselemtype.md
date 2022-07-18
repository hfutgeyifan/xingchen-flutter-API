---
description: 群通知消息类型
---

# GroupTipsElemType

## 枚举类型介绍

群通知消息类型

## 枚举值列表

| 枚举值名称                                          | 枚举类型描述                                                                                    | 枚举值 |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------- | --- |
| V2TIM\_GROUP\_TIPS\_TYPE\_JOIN                 | 主动入群（memberList 加入群组，非 Work 群有效）                                                          | 1   |
| V2TIM\_GROUP\_TIPS\_TYPE\_INVITE               | 被邀请入群（opMember 邀请 memberList 入群，Work 群有效）                                                 | 2   |
| V2TIM\_GROUP\_TIPS\_TYPE\_QUIT                 | 退出群组                                                                                      | 3   |
| V2TIM\_GROUP\_TIPS\_TYPE\_KICKED               | 踢出群 (opMember 把 memberList 踢出群组)                                                          | 4   |
| V2TIM\_GROUP\_TIPS\_TYPE\_SET\_ADMIN           | 设置管理员 (opMember 把 memberList 设置为管理员)                                                      | 5   |
| V2TIM\_GROUP\_TIPS\_TYPE\_CANCEL\_ADMIN        | 取消管理员 (opMember 取消 memberList 管理员身份)                                                      | 6   |
| V2TIM\_GROUP\_TIPS\_TYPE\_GROUP\_INFO\_CHANGE  | 群资料变更 (opMember 修改群资料：groupName & introduction & notification & faceUrl & owner & custom) | 7   |
| V2TIM\_GROUP\_TIPS\_TYPE\_MEMBER\_INFO\_CHANGE | 群成员资料变更 (opMember 修改群成员资料：muteTime)                                                       | 8   |
