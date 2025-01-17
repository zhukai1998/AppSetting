# IntelliJ
- 首先感谢前辈大人们的无私分享，本人只是搬运

## 激活
- [下载](https://www.jetbrains.com/idea/download/#section=mac)
- 打开 IntelliJ IDEA 后，暂时选择 30 天免费试用 Evaluate for free
- [参考链接](https://www.macfz.com/a/Jetbrainscrack.html)
### 线上
- 在 Settings/Preferences... -> Plugins 内手动添加第三方插件仓库地址：`https://plugins.zhile.io`
- 搜索：IDE Eval Reset插件进行安装
### 线下
- 或者下载 ide-eval-resetter-2.1.6.jar包
- 在Settings/Preferences... -> Plugins 里手动安装插件（Install Plugin From Disk...）
### 备注
- 点击IDEA 欢迎面板左下角的 ··· 
- 选择 Eval Reset
- 勾选Auto reset before per restart
```
如果长达25天不曾有任何重置动作，IDE会有通知询问你是否进行重置。
如果勾选：Auto reset before per restart ，重置是静默无感知的。
简单来说：勾选了Auto reset before per restart则无需再管，一劳永逸。
```

# 热部署
## IDEA JRebel

- 生成 [GUID](https://www.guidgen.com) 的网址
- 用 `https://jrebel.qekang.com/` + 获取刚生成的 GUID 拼接：`https://jrebel.qekang.com/{GUID}`，如 `https://jrebel.qekang.com/19a51130-ee54-4b73-bcca-6f7169c8f01a`
- 将拼接后的 URL 填写到 JREBEL 的 Tean URL 栏，再填写个人邮箱后，开始激活
- 在 IDEA 的 Preferences 里搜索 JREBEL，将其设置为 WORK OFFLINE
- 勾选 Autorenew offline seat
- 选择 Build, Execution, Deployment -> Compiler
- 启用 Build project automatically.
- 选择 Appearance & Behavior > System Settings
- 填写 Save files automatically if application is idle for [2]s
- 选择 help->find action…
- 打开 registry
- 启用 compiler.automake.allow.when.app.running

# 显示内存
- 双击`Shift`
- 输入`show memory indicator`
- 设置为`on`

# 改变内存
- 菜单栏`help`
- `Change Memory Settings`
- 更改内存值

# 插件安装
- Atom Material File Icons
- Material Theme UI Plugin
- rainbow bracketes 
- VisualVM Launcher
- grep console
- ignore   选择maven 和 JetBrains 、或者使用这里面的.gitignore

# 注释添加
- Editor -> File and code Templates -> Class、Interface、Enum、AnnotationType
```
/**
 * <p>
 * 
 * </p>
 * 
 * @author ${USER}
 * @date ${DATE} ${TIME}
 **/
```
- Editor -> Live Templates -> +
- Abbreviation: `*`
- Template Text:
```
 * 
 * <p>
 * 
 * </p>
 * @author zhukai
 * @date $time$ $date$
 *
 * @Param $param$
 * @return $return$
 **/
 ```
 - 应用区域选择 Java
 - EDIT VARIABLES
 
 | Name | Expression | Default Value | Skip if defined |
 | :----: | :----: | :----: | :----: | 
 | time | time() |||
 | date | date() |||
 | param | methodParameters() |||
 | return | methodReturnType() |||
 
 - ![img](./template.jpg)

# SQL配置
- Editor -> Inspections 
- 筛选 SQL
- 取消勾选 No data sources configured 和 Unresolved reference
 
 # 代理 可以不配置的
 - 搜索 HTTP Proxy
 - 选择 Manual proxy configuration
 - 选择 SOCKS
 - Host name 填 `localhost`
 - Port number 填 `7890`
 - 点击 CHECK CONNECTION
 - 输入检测的网址，比如`https://github.com:443`
 - 根据返回的状态判断：是否OK
 - ![img](./idea_proxy.jpg)





# git
- git config --global http.proxy http://127.0.0.1:7890
- git config --global https.proxy http://127.0.0.1:7890


