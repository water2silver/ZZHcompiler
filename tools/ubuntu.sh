#/bin/sh

# 代理URL，必须最后含有字符/，没有时请设置为空
PROXY_URL="https://proxy.201704.xyz/"

# 切换时区东八区
timedatectl set-timezone Asia/Shanghai

# 更新中科大的源
sed -E -i -e 's/(archive|ports).ubuntu.com/mirrors.ustc.edu.cn/g' -e '/security.ubuntu.com/d' /etc/apt/sources.list
# 更新apt
apt-get update

# 安装一系列的软件
apt-get install -y zsh vim git wget curl python3 sudo
apt-get install -y software-properties-common apt-utils clang llvm libtool cmake graphviz graphviz-dev dos2unix
apt-get install -y flex bison 
apt-get install -y openjdk-17-jdk
apt-get install -y gcc-mips-linux-gnu g++-mips-linux-gnu
apt-get install -y gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
apt-get install -y gcc-riscv64-linux-gnu g++-riscv64-linux-gnu
apt-get install -y qemu-user-static
apt-get install -y doxygen texlive-lang-chinese texlive-lang-english texlive-latex-extra texlive-science texlive-plain-generic
apt-get install -y openssh-server

# 编译安装antlr 4.12.0
cd ~
wget -O /usr/local/bin/antlr-4.12.0-complete.jar ${PROXY_URL}https://github.com/antlr/website-antlr4/blob/gh-pages/download/antlr-4.12.0-complete.jar
chmod +x /usr/local/bin/antlr-4.12.0-complete.jar
wget -O antlr4-cpp-runtime-4.12.0-source.zip ${PROXY_URL}https://github.com/antlr/website-antlr4/blob/gh-pages/download/antlr4-cpp-runtime-4.12.0-source.zip
unzip antlr4-cpp-runtime-4.12.0-source.zip -d antlr4-cpp-runtime-4.12.0-source
cd antlr4-cpp-runtime-4.12.0-source
cmake -B build -S . -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Debug
cmake --build build --parallel
cmake --install build

# 安装oh-my-zsh
git clone ${PROXY_URL}https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone ${PROXY_URL}https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone ${PROXY_URL}https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/^plugins=(/plugins=(zsh-autosuggestions zsh-syntax-highlighting z /' ~/.zshrc
chsh -s /bin/zsh

# 创建用户code，设置密码为password
useradd --create-home --no-log-init --shell /bin/zsh -G sudo code
echo 'code:password' | chpasswd

# 为用户code安装oh-my-zsh
# 切换到用户code
su - code
git clone ${PROXY_URL}https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone ${PROXY_URL}https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone ${PROXY_URL}https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/^plugins=(/plugins=(zsh-autosuggestions zsh-syntax-highlighting z /' ~/.zshrc
chsh -s /bin/zsh
# 退出当前用户code
exit

