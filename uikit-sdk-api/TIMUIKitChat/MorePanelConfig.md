---
description: 更多操作选项设置
---

# MorePanelConfig

## 关键类描述

更多操作选项设置

## 参数

### showGalleryPickAction

* 参数类型 : bool
* 参数描述 : 是否展示默认的图片选择器

### showCameraAction

* 参数类型 : bool
* 参数描述 : 是否展示默认的拍照功能

### showFilePickAction

* 参数类型 : bool
* 参数描述 : 是否展示默认的文件选择器

### extraAction

* 参数类型 :  List< [MorePanelItem](MorePanelItem.md) >
* 参数描述 : 额外自定义的功能选项列表

### actionBuilder

* 参数类型 : Widget Function([MorePanelItem](MorePanelItem.md) item)
* 参数描述 : 更多功能选项的样式构造器
