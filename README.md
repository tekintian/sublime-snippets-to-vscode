# 批量转换sublime snippets到vscode snippets

# sublime snnippets batch convert to vscode snippets


## 批量转换sublime snippets to vscode snippets

~~~sh
# 首先需要全局安装
cnpm install -g sublime-snippets-to-vscode

# 然后执行  自动转换sublime下的用户snippets 到vscode的用户snippets
sh convert_to_vscode.sh

~~~



- 默认sublime sinppets目录:

~/Library/Application Support/Sublime Text 3/Packages/User/snippets



- 默认vscode sinppets目录:

~/Library/Application Support/Code/User/snippets

##vscode snippets

https://code.visualstudio.com/docs/editor/userdefinedsnippets



## dev and debug

~~~sh
git clone https://github.com/tekintian/sublime-snippets-to-vscode.git
cd sublime-snippets-to-vscode
npm install

# open vscoe and run javascript debug terminal
node index.js -s tests/ss -o tests/vs/test.json

~~~



## publish npm package

~~~sh
# https://www.npmjs.com/
# 将仓库重置回官方仓库
npm  config set registry registry.npmjs.org
# 登录和发布
npm  login
npm  publish

# 发布完成后替换回国内加速仓库
npm  config set registry https://registry.npmmirror.com

~~~


## Convert Textmate or Sublime Code Snippets to VSCode

Based off the [VSCode Yeoman generator](https://github.com/Microsoft/vscode-generator-code), I have created a script to convert Textmate or Sublime snippets to a VSCode snippet json file. The intent is to be able to have multiple snippet language types in a single VSCode extension but the Yeoman template generator only does 1 snippet language.

One other difference from the [VSCode Yeoman generator](https://github.com/Microsoft/vscode-generator-code), is that if will recursively look through the given directory for the snippets.

## Install the Converter

```bash
npm install sublime-snippets-to-vscode
```

```bash
npm install -g sublime-snippets-to-vscode
```


## Run Converter

To launch the converter and be prompted for info simply type:

```bash
$ sublimeSnippetsToVsCode

Folder location that contains Text Mate (.tmSnippet) and Sublime snippets (.sublime-snippet)
? Folder name: c:\temp\Snippets\Css
? Output File Name: c:\temp\css.json
```

To launch to convert and pass in command line arguments:

```bash
sublimeSnippetsToVsCode -s c:\temp\Snippets\Css -o c:\temp\css.json
```
## Converter Output

A json file with the converted templates in the vscode format.

Take the generated file, add it to your VSCode Extension that you generated with [VSCode Yeoman generator](https://github.com/Microsoft/vscode-generator-code) in the snippets directory.

Then update the package.json file in your VSCode Extension project with the new snippets file name and language that it supports.

## License

[MIT](LICENSE)
