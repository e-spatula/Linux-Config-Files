eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pulse/extra/usr/lib/x86_64-linux-gnu/

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

HISTSIZE=100000
AVEHIST=100000
# HISTFILE=~/.bash_history
HISTFILE=~/.zsh_history
	
alias 2002="cd ~/Documents/CITS2002"
alias mycc="cc -std=c99 -Wall -pedantic -Werror"
alias mycpp="g++ -std=c++11 -Wall -pedantic -Werror" 

vc() {
if [ -f "t.c" ]
then
	vim t.c
 else
touch t.c
echo '#include <stdio.h>
int main(int argc, char** argv) {
	printf("Hello, World!\\n");
	return(0);
}' >> t.c
vim t.c
fi
}

alias zedit="vim ~/zsh_store/.zshrc"

alias sact="source ~/.zshrc"
# alias sa="source ~/.bashrc"
ccd() {
	local val=${1:?Must provide an argument}
	cd ~/Documents/CITS$val
}

alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias downloads="cd ~/Downloads"

stats() {
	local val=${1:?Must provide an argument}
	cd ~/Documents/STAT$val 
}

ff() {
	firefox $1 &	
}

alias kp="killall ./station"
alias tmux="TERM=screen-256color-bce tmux"
alias vsset="vim ~/.config/Code/User/settings.json"
na() {
	nautilus --browser $1 &
}

hist() {
	cat ~/.zsh_history
}

alias pulse="/usr/local/pulse/pulseUi &"

ports() {
	echo "you might want to try lsof -i"
}

alias lorem="curl https://gist.githubusercontent.com/eddie-atkinson/b502aae2dc358635faf67c51e95eab06/raw/f7b5c5be68a3daf9892167513840d435bef3e3bb/lorem.txt"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
