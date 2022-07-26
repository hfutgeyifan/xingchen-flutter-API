本文主要介绍如何快速将腾讯云即时通信 IM SDK 集成到您的 Flutter 项目中。

## 环境要求

| 平台 | 版本 | 
|---------|---------|
| Flutter | 2.2.0 及以上版本。 | 
|Android|Android Studio 3.5及以上版本，App 要求 Android 4.1及以上版本设备。|
|iOS|Xcode 11.0及以上版本，真机调试请确保您的项目已设置有效的开发者签名。|


## 集成 IM SDK
您可以通过 [pub add](https://pub.dev/packages/tencent_im_sdk_plugin) 的方式直接集成腾讯云 IM SDK（Flutter），或者在 pubspec.yaml 中写入 IM SDK 的方式来集成。


### flutter pub add 安装
在终端窗口中输入如下命令（需要提前安装 Flutter 环境）：
```
flutter pub add tencent_im_sdk_plugin
```

### 在 pubspec.yaml 中写入
```
dependencies:
  tencent_im_sdk_plugin: "最新版本" //可在https://pub.dev/packages/tencent_im_sdk_plugin上查看im flutter sdk的最新版本并使用
```
此时您的 editor 或许会自动 flutter pub get，如果没有请您在命令行中手动输入 flutter pub get。


### 引入并初始化 SDK
```
import 'package:tencent_im_sdk_plugin/tencent_im_sdk_plugin.dart';

```


## 常见问题

### flutter pub get/add 失败如何解决？
请参见官网配置 [国内镜像](https://flutter.cn/community/china)。

