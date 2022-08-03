---
description: 在uikit中初始化在native端已登录的用户信息
---

# setDataFromNative

## 功能介绍

在uikit中初始化在native端已登录的用户信息

使用此API需要操作以下步骤：

1. 在native层已经初始化sdk。
2. 在native层中拥有API参数userId的用户已经登录。

## 参数详解

| 参数名称     | 参数类型                                                              | 是否必填 | 描述                                                    |
| -------- | ----------------------------------------------------------------- | ---- | ----------------------------------------------------- |
| onTUIKitCallbackListener | Function([TIMCallback](TIMCallback.md) TIMCallback)            | 否    | 该监听用于返回包括：SDK API 错误 / Flutter 报错 / 一些可能需要弹窗提示用户的场景信息。 | 
| language | [LanguageEnum](LanguageEnum.md) | 否    | UIKit系统语言                                                |
| config | [TIMUIKitConfig](TIMUIKitConfig.md) | 否    | UIKit全局设置                                                |
| userId | String | 是    | 在native层中登录的用户的userid                                             |

## 返回值

```dart
Future<void>

```

## 返回值详解

{% hint style="info" %}
此API无返回值
{% endhint %}                                                    |

## 代码示例  &#x20;

```dart
    //使用TIMUIKitCore.getInstance()在uikit中初始化在native端已登录的用户信息
    final CoreServicesImpl coreInstance = TIMUIKitCore.getInstance();
    coreInstance.setDataFromNative(
      onTUIKitCallbackListener: (TIMCallback callbackValue) {
        switch (callbackValue.type) {
          case TIMCallbackType.INFO:
            // 自动展示推荐提示语
            Utils.toast(callbackValue.infoRecommendText!);
            break;

          case TIMCallbackType.API_ERROR:
            //打印API的错误, 并展示错误信息.
            print(
                "Error from TUIKit: ${callbackValue.errorMsg}, Code: ${callbackValue.errorCode}");
            if (callbackValue.errorCode == 10004 &&
                callbackValue.errorMsg!.contains("not support @all")) {
              Utils.toast(imt("当前群组不支持@全体成员"));
            } else if (callbackValue.errorCode == 80001 &&
                callbackValue.errorMsg!.contains("not support @all")) {
              Utils.toast(imt("发言中有非法语句"));
            } else {
              Utils.toast(
                  callbackValue.errorMsg ?? callbackValue.errorCode.toString());
            }
            break;

          case TIMCallbackType.FLUTTER_ERROR:
          default:
            // 打印栈错误
            if (callbackValue.catchError != null) {
              Utils.toast(callbackValue.catchError.toString());
            } else {
              print(callbackValue.stackTrace);
            }
        }
      },
      language: LanguageEnum.en, // UIKit系统语言
      config: TIMUIKitConfig(isShowOnlineStatus: true), //UIKit全局设置
      userId: '', //在native层中登录的用户的userid
    );
```
