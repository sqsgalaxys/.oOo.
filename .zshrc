# Myself PATH {{{

#for p in `find $HOME/local -maxdepth 1 -type d -exec test -d {}/bin \; -print`; do
	#PATH=$p/bin:$PATH
#done
PATH=$HOME/local/bin:/usr/local/bin:/usr/local/sbin:$PATH
PATH=$PATH:/Users/alswl/Library/Python/2.7/bin
PATH=$PATH:/Library/TeX/texbin/
PATH=$PATH:/Users/alswl/.virtualenvs/sys/bin/

#for p in `find /usr/local -maxdepth 1 -type d -exec test -d {}/bin \; -print`; do
	#PATH=$p/bin:$PATH
#done

export PATH
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2  # for zsh plugin virtualenvwrapper
# }}}


# ZSH Config {{{

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerline"
ZSH_THEME="robbyrussell"
#ZSH_THEME="kolo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump aws bower brew-cask colored-man compleat django docker docker-compose fabric gem git git-flow go golang gradle history history-substring-search httpie mvn nmap npm osx pip python rvm redis-cli rsync sbt scala screen ssh-agent sudo svn thefuck tmux urltools vagrant virtualenvwrapper xcode zsh_reload adb)
# virtualenvwrapper 

source $ZSH/oh-my-zsh.sh

#export POWERLINE_RIGHT_B="none"
#export POWERLINE_HIDE_HOST_NAME="true"

# }}}


# Customize to your needs...

export EDITOR=vim
export RLWRAP_EDITOR="vim '+call cursor(%L,%C)'"
if [ `uname` = 'Darwin' ]; then
	export JAVA_HOME=`/usr/libexec/java_home -v 9`
fi

[ -f ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

# [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc' ] && source'/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
# [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc' ] && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

export GOPATH=$HOME/.gopath
export HOMEBREW_NO_ANALYTICS=1
export ANSIBLE_NOCOWS=1
export ANDROID_HOME=/usr/local/opt/android-sdk

# personal script {{{
[ -f $HOME/.personal.sh ] && . $HOME/.personal.sh
# }}}

# 常用alias {{{
if [ `uname` = 'Darwin' ]; then
	alias ls='ls -Gv'
	alias b=brew
	alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
	alias find=gfind
	alias readlink=greadlink
	alias p2a='pbpaste > /tmp/a.html && open /tmp/a.html'
	alias p2v='pbpaste | vi -'
	alias -g Toa=' > /tmp/a.html && open /tmp/a.html'
	alias screen='TERM=xterm-256color /usr/local/bin/screen'
	alias mute='osascript -e "set volume 0"'
	alias unmute='osascript -e "set volume 2"'
	alias find='gfind'
	alias date='gdate'
	alias sed='gsed'
	alias sort='gsort'
elif [ `uname -s` = 'Linux' ] || [ `uname -o` = 'Cygwin' ]; then
	alias ls="ls --color=auto"
fi
alias c='cat'
alias ll='ls -l'
alias llh='ls -lh'
alias la='ls -a'
alias mkdir='mkdir -p'
alias rmm='rm -R'
alias ..='cd ..'
alias mem='free -m'
alias less='less -i'
alias rv='rview'
alias dstat='dstat -cdlmnpsy'
if [ `uname` = 'Darwin' ]; then
	alias grep='ggrep --exclude-dir=".git" --exclude-dir=".svn" --color=auto'
else
	alias grep='grep --exclude-dir=".git" --exclude-dir=".svn" --color=auto'
fi
alias ag='ag --pager "less -R"'
alias tmux='tmux -2'
alias g=git
alias gc='git c'
alias gci='git ci'
alias gcv='git civ'
alias gpl='git pl'
alias gps='git ps'
alias gspl='git spl'
alias gsps='git sps'
alias gbr='git br'
alias gf='git f'
alias gs='git status'
alias gnst='git number status'
alias gdf='git df'
alias gfuck='git reset --hard ORIG_HEAD && git clean -fd'
alias gn='git number --column'
alias v=vim
alias vv=mvim
alias mk=mkdir
alias le=less
alias psg='ps -ef | grep '
alias ipy=/Users/alswl/.virtualenvs/7/bin/ipython
alias py='python'
alias jy='jython'
alias ksh='killall ssh'
alias screen='TERM=xterm-256color screen'
alias s='sudo '
alias vd='vimdiff'
alias vdiff='vimdiff'
alias f=fd
alias tarx='tar xzvf'
alias tarc='tar czvf'
alias e='echo'
alias vh='sudo vim /etc/hosts'
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc"
alias fff='fuck'
alias wo='workon'
alias ta='tmux attach -t'
alias k='kill'
alias k9='kill -9 '
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
alias rlmssql='rlwrap -n -i -a -c -S "mssql> " -f ~/local/etc/mssql_bindings.txt mssql'  # https://github.com/hasankhan/sql-cli
alias rlscheme='rlwrap -i -r -c -f ~/local/etc/mit_scheme_bindings.txt scheme'

alias -g L='| less'
alias -g G='| grep --color=auto'
alias -g H='| head'
alias -g J='| jq . | less'
alias -g W='| wc -l'
alias -g V='| vim -'
if [ `uname` = 'Darwin' ]; then
	alias -g C='| pbcopy'
	alias -g P='pbpaste'
fi
alias -g H='http_proxy=http://127.0.0.1:1235 https_proxy=http://127.0.0.1:1235'
alias -g GP='GIT_PROXY_COMMAND=~/local/bin/socks5proxywrapper; GIT_SSH=~/local/bin/soks5proxyssh'
alias girl='man'

# }}}

# 路径别名 {{{
#hash -d WWW="/srv/http/" # use http instead
hash -d dt="/Users/alswl/duitang/"
hash -d hj="/Users/alswl/hujiang/"
hash -d md="/Users/alswl/Desktop/md"
hash -d wl="/Users/alswl/Desktop/md/work-log"
hash -d ib="/Users/alswl/Desktop/md/inbox"
hash -d ib="/Users/alswl/Desktop/md/inbox"
# }}}

# virtual wrapper {{{
#[ -f /usr/bin/virtualenvwrapper.sh ] && source /usr/bin/virtualenvwrapper.sh # arch
#[ -f /etc/bash_completion.d/virtualenvwrapper ] && source /etc/bash_completion.d/virtualenvwrapper # ubuntu
#}}}

# rvm {{{
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
# }}}

# arc {{{
[[ -s $HOME/local/arcanist/resources/shell/bash-completion ]] && source $HOME/local/arcanist/resources/shell/bash-completion
# }}}

# gitlab {{{
[[ -s $HOME/.gitlabrc ]] && source $HOME/.gitlabrc
# }}}

# ansible {{{
#[[ -s $HOME/local/ansible/hacking/env-setup ]] && source $HOME/local/ansible/hacking/env-setup -q
# }}}


# key binding {{{
bindkey '\e.' insert-last-word

#bindkey "\e[1~" beginning-of-line # Home
#bindkey "\e[4~" end-of-line # End
#bindkey "\e[5~" beginning-of-history # PageUp
#bindkey "\e[6~" end-of-history # PageDown
#bindkey "\e[2~" quoted-insert # Ins
#bindkey "\e[3~" delete-char # Del
#bindkey "\e[5C" forward-word
#bindkey "\eOc" emacs-forward-word
#bindkey "\e[5D" backward-word
#bindkey "\eOd" emacs-backward-word
#bindkey "\e\e[C" forward-word
#bindkey "\e\e[D" backward-word
#bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
#bindkey "\e[7~" beginning-of-line # Home
#bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
#bindkey "\eOH" beginning-of-line
#bindkey "\eOF" end-of-line
# for freebsd console
#bindkey "\e[H" beginning-of-line
#bindkey "\e[F" end-of-line
bindkey \^U backward-kill-line

bindkey "^x^e" edit-command-line

bindkey "[16~" delete-char # F5 pass to tmux
bindkey "[17~" delete-char # F6 pass to tmux
bindkey "[18~" delete-char # F7 pass to tmux
bindkey "[19~" delete-char # F8 pass to tmux
bindkey "^[[20~" delete-char # F9 pass to tmux
bindkey "^[[21~" delete-char # F10 pass to tmux
bindkey "^[[23~" delete-char # F11 pass to tmux
bindkey "[24~" delete-char # F12 pass to tmux

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# }}}

#color
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS

# LANG
LANG="en_US.UTF-8"
LC_COLLATE="zh_CN.UTF-8"
LC_CTYPE="zh_CN.UTF-8"
LC_MESSAGES="zh_CN.UTF-8"
LC_MONETARY="zh_CN.UTF-8"
LC_NUMERIC="zh_CN.UTF-8"
LC_TIME="zh_CN.UTF-8"
LC_ALL="zh_CN.UTF-8"

[[ -s /usr/share/source-highlight/src-hilite-lesspipe.sh ]] && export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
[[ -s /usr/local/bin/src-hilite-lesspipe.sh ]] && export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"

#. ~/dev/project/shell/powerline/powerline/bindings/zsh/powerline.zsh
#eval "$(jenv init -)"
