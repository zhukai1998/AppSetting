# 安装 package control
- `command + Shift + P` 调出命令面板
- `install package ...`

# 插件
- ChineseLocalizations 中文界面
- Emmet 提高HTML & CSS3编写速度
- sideBarEnhancements 侧边栏右键增效插件，提高页面处理速度
- All Autocomplete 检查全部打开文件，相似自动补全插件
- SublimeCodeIntel 代码提示工具
- BracketHighlighter 成对匹配增强，并修改括号等的颜色
- DocBlockr 快速注释
- ConvertToUTF8 UTF8转换
- Codecs33 windows 中文编码
- Material Theme
- OmniMarkupPreview md 实时预览,需要浏览器支持
- TableEditor md文件 talbe书写。首先需要用command + shift + p，输入 TableEditor，选择Enable for current syntax/view
- https://www.jianshu.com/p/161f8f9c4146 其中GoSublime链接如下https://margo.sh/GoSublime
```
创建一个表格
输入：
|第一列|第二列|第三列|
|-
然后按 Tab 即可生成一个表，如下：
|第一列|第二列|第三列|
|-----|-----|-----|
|     |     |     |
填入数据后，直接按 Tab 会自动格式化空格

```




- 取消注释换行依然会加//
菜单栏的Sublime Text, 找到：

Preferences -> Package Settings -> Doc Blockr -> Settings - User

添加以下内容:

```
{
  "jsdocs_extend_double_slash": false
}
```

- 默认配置
```json
{
	"close_windows_when_empty": true,
	"ignored_packages":
	[
		"Vintage",
	],
	"font_size": 14,
	"show_tab_close_buttons_on_left": true,
	"theme": "Material-Theme.sublime-theme",
	"color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
}

```
