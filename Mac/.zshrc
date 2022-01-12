# 配色配置
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche

autoload -U colors && colors
PROMPT="%{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg_bold[cyan]%}%m %{$fg_bold[green]%}%1~ %{$reset_color%}%#"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home 
export TOMCAT_HOME=/Users/zhukai/tomcat/
export PATH=$PATH:$TOMCAT_HOME/bin
export JMeter_HOME=/Users/zhukai/jmeter/

# 别名
alias cli-qing="redis-cli -h qingdao2redis.redis.rds.aliyuncs.com -p 6379 -c"
alias cli-zhang="redis-cli -h r-8vbnoxdqtsz7lrc1vipd.redis.zhangbei.rds.aliyuncs.com -p 6379 -c"

# Java  To enable core dumping, try "ulimit -c unlimited" before starting Java again
ulimit -c unlimited

# tomcat
alias tomcat-startup="sh /Users/zhukai/tomcat/bin/startup.sh"
alias tomcat-shutdown="sh /Users/zhukai/tomcat/bin/shutdown.sh"
