---
description: 用户信息组件
---

# TIMUIKitProfile

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：用户信息组件。

使用场景：展示用户信息时使用。

## 参数列表

### 必填参数列表

| 参数     | 说明            | 类型     |
| ------ | ------------- | ------ |
| userID | 需要展示用户信息的用户id | String |

### 可选参数列表

| 参数                   | 说明                                                                     | 类型                        |
| -------------------- | ---------------------------------------------------------------------- | ------------------------- |
| controller           | 关于用户信息操作的控制器                                                           | TIMUIKitProfileController |
| profileWidgetBuilder | 用于自定义构建用户信息页面不同部分的构造器                                                  | ProfileWidgetBuilder      |
| profileWidgetsOrder  | 用于自定义构建用户信息页面不同部分的排序设置                                                 | List< ProfileWidgetEnum > |
| builder              | 用于自定义构建整个用户信息页面的构造器（若使用此属性则profileWidgetBuilder与profileWidgetsOrder失效） | ProfileBuilder            |
| lifeCycle            | 用户信息操作钩子                                                               | OnSelProfileLifeCycle     |

## 代码示例

## 效果展示
