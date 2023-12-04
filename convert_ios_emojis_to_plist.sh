#!/bin/bash

filenames=($(find . -maxdepth 1 -name "*.lproj"))

# 保存目录
dest_dir="$HOME/Downloads/Emojis"
if [[ ! -d "$dest_dir" ]]; then
	mkdir -p "$dest_dir"
fi

for filename in "${filenames[@]}"
do
	# 移除路径和扩展名，仅保留语言部分
	lang=${filename##*/}
	lang=${lang%%.*}

	# 转换 AppleName.strings 文件
	
	source_file="$filename/AppleName.strings"
	if [[ ! -f "$source_file" ]]; then
		continue
	fi
	
	plistutil -i "$source_file" -f xml -o "$dest_dir/AppleName-$lang.plist"
done
