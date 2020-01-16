# 准备
- bootjdk ： jdk 13
- xcode
- homebrew
- mercurial

# 安装
- xcode-select --install
- curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install >> brew_install
- 执行后就会在当前用户目录下下载一个brew_install文件，然后vim修改文件中的下载源地址为清华大学的镜像地址 BREW_REPO = "https://mirrors.ustc.edu.cn/brew.git".freeze
- /usr/bin/ruby brew_install
- 添加清华大学镜像源：
- echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles'>>   ~/.bash_profile
- source ~/.bash_profile
- brew install mercurial
- hg clone http://hg.openjdk.java.net/jdk/jdk13/
- brew install ccache freetype autoconf gcc clang
- 检查依赖是否完全 bash configure
- 开始编译 make images
- 验证 ./build/*/images/jdk/bin/java -version
