#!/bin/sh
# sublime snippets batch convert to vscode snippets
# sublime用户代码片段批量转换到vscode代码片段脚本工具
# 使用方法： sh convert_to_vscode.sh
#
#
#  注意macos下的文件夹 如果有空格，在定义变量和使用的时候都需要使用引号，否则会找不到目录
# sublime的用户自定义 snippets 目录
sublime_spdir="~/Library/Application Support/Sublime Text 3/Packages/User/snippets"

# vscode的用户自定义 snippets 目录
vscode_spdir="~/Library/Application Support/Code/User/snippets"

# 获取 sublime用户自定义snippets文件夹下的文件夹 作为输入源
uspdirs=$(ls -SF "${sublime_spdir}"|grep "/")

# 循环用户代码片段目录下的文件夹
for dir in $uspdirs;do
	# 执行转换并输出到vscode的用户自定义snippets目录
	sublimeSnippetsToVsCode -s "${sublime_spdir}/${dir}" -o "${vscode_spdir}/${dir%/*}.json"
done
