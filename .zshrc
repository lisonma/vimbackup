#######################################################################
#                                Proxy                                #
#######################################################################
export http_proxy=http://127.0.0.1:9743/
export https_proxy=http://127.0.0.1:9743/
#export http_proxy=proxy.wormholes.xyz:80
#######################################################################
#                                Theme                                #
#######################################################################
ZSH_THEME="agnoster"
DEFAULT_USER=klauoth
#######################################################################
#                              Function                               #
#######################################################################
function dis_slepp {  caffeinate -u -t 3600 }
function st { top -o vsize }
function wifi2password { print "security find-generic-password -ga \"name\" | grep \"password:\" " }
function hide { /usr/libexec/PlistBuddy -c "Add :LSUIElement bool true" /Applications/iTerm.app/Contents/Info.plist }
function hideb { /usr/libexec/PlistBuddy -c "Add :LSUIElement bool true" /Applications/Bilibili.app/Contents/Info.plist }
function show { /usr/libexec/PlistBuddy -c "Delete :LSUIElement" /Applications/iTerm.app/Contents/Info.plist }
function showFile { defaults write com.apple.finder AppleShowAllFiles -bool true }
function hideFile { defaults write com.apple.finder AppleShowAllFiles -bool false }
function createIcns {
  for n in *.iconset;
  do
  iconutil -c icns $n ;
  rm -rf $n;
  done
}
deleteSpotlight() {
    cd /System/Library/CoreServices/
    sudo mv Search.bundle Search2.bundle
    killall SystemUIServer
}
new front-end-proj() {
    cd ~/
    cp -R ~/front_end_proj_template/project .
}
function net { python /Applications/STunGUI.app/Contents/Resources/Fish88Check.py }
#######################################################################
#                                Alias                                #
#######################################################################
alias compilecpp='g++  -g -Wall -Werror -Wformat -std=c++11 -stdlib=libc++  -o result'
alias compilec='gcc -g -Wall -Werror -Wformat -std=c99 -o result'
alias c='cd'
alias mk='mkdir'
alias t='tree -C'
alias ta='tree -a -C'
alias td='tree -d -C'
alias tl='tree -C -L'
# alias vd = 'vimdiff'
alias sl='clear'
alias la='ls -a'
alias vim='mvim -v'
alias lss='ls -lhS'
alias ss='ls -alh'
alias ql='qlmanage -p'
alias e='mvim -v'
alias javac="javac -J-Dfile.encoding=utf-8"
alias grep="grep --color=auto"
# alias -s py='mvim -v'
alias -s scm='mvim -v'
alias -s c='mvim -v'
alias -s java='mvim -v'
alias -s txt='mvim -v'
alias -s gz='tar -xzvf'
alias o='open'
#######################################################################
#                               Export                                #
#######################################################################
export aria2c=/usr/local/etc/bash_completion.d/aria2c
export ZSH=$HOME/.oh-my-zsh
export ATJ="/usr/local/Cellar/autojump/22.3.0/etc/profile.d"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
plugins=(git colored-man virtualenv brew osx autojump web-search last-working-dir gem npm)
source $ZSH/oh-my-zsh.sh
source $ATJ/autojump.sh
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
export LANG="zh_CN.UTF-8"
export LC_COLLATE="zh_CN.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"
export LC_MESSAGES="zh_CN.UTF-8"
export LC_MONETARY="zh_CN.UTF-8"
export LC_NUMERIC="zh_CN.UTF-8"
export LC_TIME="zh_CN.UTF-8"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/klauoth/.rvm/bin:/usr/local/include"
# export LC_ALL=
# export GROFF_NO_SGR=1
# export LESS_TERMCAP_mb=$'\E[01;36m'
# export LESS_TERMCAP_md=$'\E[01;36m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;44;33m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;33m'
