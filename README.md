# 提供从 iOS 系统中导出的 emoji 的所有语言的描述

本仓库描述由`iPhone16,2_17.1.2_21B101_Restore.ipsw`中提取

## 描述

1. `CoreEmoji.framework`为从 ipsw 中提取的原始资源

        如何找到？

        解压 `ipsw` 文件后，会看到多个 dmg 文件，找到最大的那个并挂载（应该是最大的那个，未测试其它系统）.

        进入挂载的目录，然后找到`System/Library/PrivateFrameworks/CoreEmoji.framework`


2. `Emojis`为导出后的描述
3. `AppleColorEmoji-160px.ttc`为从 ipsw 中提取的字体包
4. `convert_ios_emojis_to_plist.sh` 为导出脚本

## 如果想自己提取，可使用`convert_ios_emojis_to_plist.sh`

使用方式：

1. cd 到 CoreEmoji.framework 目录
2. 修改`dest_dir`，默认为~/Downloads/Emojis目录
3. 运行
