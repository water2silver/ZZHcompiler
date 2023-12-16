#/bin/sh

# 两种选择：基于gcc的底层运行库和基于llvm的底层运行库
# 基于gcc的底层运行库选择mingw-w64-x86_64
# 基于llvm的底层运行库选择mingw-w64-clang-x86_64
# 这里选择mingw-w64-clang-x86_64
MSYS2_KIND=mingw-w64-clang-x86_64

# 指定安装antlr4的版本
ANTLR4_VERSION=4.12.0

# 安装常用的软件
pacman -S --noconfirm zsh vim git

# 安装flex和bison
pacman -S --noconfirm flex bison

# 安装python以及python-pip
pacman -S --noconfirm ${MSYS2_KIND}-python ${MSYS2_KIND}-python-pip ${MSYS2_KIND}-python-numpy

# 安装boost
pacman -S --noconfirm ${MSYS2_KIND}-boost

# 安装cmake和ninja
pacman -S --noconfirm ${MSYS2_KIND}-cmake ${MSYS2_KIND}-ninja

# 安装doxygen
pacman -S --noconfirm ${MSYS2_KIND}-doxygen

# 安装texlive，支持中文和英文
pacman -S --noconfirm ${MSYS2_KIND}-texlive-lang-chinese ${MSYS2_KIND}-texlive-lang-english ${MSYS2_KIND}-texlive-latex-extra ${MSYS2_KIND}-texlive-science ${MSYS2_KIND}-texlive-plain-generic

# 安装gcc和gdb
pacman -S --noconfirm ${MSYS2_KIND}-gcc ${MSYS2_KIND}-gdb

# 安装clang和lldb
pacman -S --noconfirm ${MSYS2_KIND}-llvm ${MSYS2_KIND}-clang ${MSYS2_KIND}-clang-tools-extra ${MSYS2_KIND}-clang-analyzer ${MSYS2_KIND}-lldb

# 安装graphviz
pacman -S --noconfirm ${MSYS2_KIND}-graphviz

# 安装antlr4-runtime-cpp-4.12.0
pacman -U --noconfirm https://mirrors.ustc.edu.cn/msys2/mingw/clang64/${MSYS2_KIND}-antlr4-runtime-cpp-${ANTLR4_VERSION}-1-any.pkg.tar.zst 
wget -O /usr/bin/antlr-${ANTLR4_VERSION}-complete.jar https://proxy.201704.xyz/https://github.com/antlr/website-antlr4/blob/gh-pages/download/antlr-${ANTLR4_VERSION}-complete.jar

# 安装oh-my-zsh
git clone https://proxy.201704.xyz/https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone https://proxy.201704.xyz/https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://proxy.201704.xyz/https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/^plugins=(/plugins=(zsh-autosuggestions zsh-syntax-highlighting z /' ~/.zshrc
