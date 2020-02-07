- 打断点：在左边行号栏单击左键
- debug 启动后，程序会停顿在第一个断点

# Debug 窗口左侧竖栏按钮解释

- Rerun 重启项目
- Resume/F9 在有多个断点的情况下，跳到下一个断点，若当前断点为最后一个，则直接结束
- Pause 暂停
- Stop 停止
- View breakpoints 查看所有断点

-- Java Line Breakpoints 显示了所有的断点，在右边勾选 Condition，设置断点的条件，比如 for 循环 i = 5
-- Log message to console，则会将当前断点行输出到控制台
-- Evaluate and log，可以在执行这行代码是计算表达式的值，并将结果输出到控制台

- Mute breakpoints 静哑断点，使所有断点无效，类似于无断点运行

# Debug 窗口上侧横栏按钮解释
- Show Execution Point 如果你的光标在其它行或其它页面，点击这个按钮可跳转到当前代码执行的行
- Step Over/F8 越过，一行一行地往下走，如果这一行上有方法不会进入方法
- Step Into/F7 步入，如果当前行有方法，可以进入方法内部，一般用于进入自定义方法内，不会进入官方类库的方法
- Force Step Into 强制步入，能进入任何方法，查看底层源码的时候可以用这个进入官方类库的方法
- Step Out 步出，从步入的方法内退出到方法调用处，此时方法已执行完毕，只是还没有完成赋值
- Drop Frame 回退断点
- Run to Cursor 运行到光标处，你可以将光标定位到你需要查看的那一行，然后使用这个功能，代码会运行至光标行，而不需要打断点
- Evaluate Expression 计算表达式

# 变量查看
- 参数所在行会显示当前变量的值
- 光标悬停到参数上，显示当前变量信息，快捷方便
- 在 Variables 里查看，这里显示当前方法里的所有变量
- 在 Watches 里，点击 New Watch，输入需要查看的变量。或者可以从 Variables 里拖到 Watches 里查看


# Android-Studio 密钥
`keytool -genkey -alias 别名 -keypass 密码 -keyalg RSA -keysize 1024 -validity 365 -keystore 路径/密钥.keystore -storepass 密码`
