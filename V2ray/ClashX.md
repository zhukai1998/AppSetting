# ClashX

- Git地址：[ClashX](https://github.com/yichengchen/clashX)

## 白名单，绕过系统代理
- 编辑`~/.config/clash/proxyIgnoreList.plist`(如果没有该文件，则新建)
- 加入自定义的白名单域名

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<array>
	<string>192.168.0.0/16</string>
	<string>10.0.0.0/8</string>
	<string>172.16.0.0/12</string>
	<string>127.0.0.1</string>
	<string>localhost</string>
	<string>*.local</string>
	<string>*.crashlytics.com</string>
	<!-- 上面的不能删掉，下面的为自定义 -->
        <string>xapi.77qr.com</string>
	<string>www.gitee.com</string>
	<string>7ee.77qr.cn</string>
        <string>47.104.173.221</string>
</array>
</plist>
```

- 重启ClashX
